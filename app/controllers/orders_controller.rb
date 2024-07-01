class OrdersController < ApplicationController
  layout 'application'

  before_action :set_order, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  def index
    if params[:filtro].present?
      @orders = Order.where("#{params[:filtro]} = ?", params[:valor_filtro]).paginate(page: params[:page],
                                                                                            per_page: 10)
    elsif params[:filtro_endereco].present?
      @orders = Order.joins(:items).where("items.#{params[:filtro_endereco]} = ?", params[:valor_filtro_endereco])
      .paginate(page: params[:page], per_page: 10)
    else
      @orders = Order.all.paginate(page: params[:page], per_page: 10)
    end
  end

  def show;end

  def new
    @order = Order.new
  end

  def edit; end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to new_items_path(order_id: @order.id), notice: 'O Pedido foi criado com sucesso!' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @order.update(order_params)
      redirect_to order_url(@order), notice: 'O Pedido foi atualizado com sucesso!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:description, :client, :sector, :delivery_date, :status)
  end
end

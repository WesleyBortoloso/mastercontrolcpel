class ItemsController < ApplicationController
  layout 'application'

  before_action :authenticate_user!
  before_action :order

  def new
    @item = order.items.new
  end

  def create
    item = order.items.create(item_params)
    if item.save
      redirect_to orders_path
    else
      flash[:notice] = item.errors.errors
      render :new, status: :unprocessable_entity
    end
  end

  private

  def order
    Order.find(params[:order_id])
  end

  def item_params
    params.require(:item)
          .permit(:name, :quantity, :description)
  end
end

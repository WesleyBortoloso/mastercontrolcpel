class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :description
      t.string :client
      t.string :sector
      t.date :delivery_date
      t.string :status

      t.timestamps
    end
  end
end

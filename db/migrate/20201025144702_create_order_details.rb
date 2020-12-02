class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.integer :item_id, null: false
      t.integer :order_id, null: false
      t.integer :quantuty, null: false
      t.integer :subtotal, null: false
      t.integer :product_status, default: 0, null: false

      t.timestamps
    end
  end
end

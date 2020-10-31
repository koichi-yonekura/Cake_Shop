class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :category_id, null: false
      t.string :item_image_id, null: false
      t.string :name, null: false
      t.text :introduction, null: false
      t.integer :price, null: false
      t.boolean :is_active, default: "販売中", null: false

      t.timestamps
    end
  end
end

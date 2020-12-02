class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.boolean :is_active, default: "有効", null: false

      t.timestamps

    end
  end
end

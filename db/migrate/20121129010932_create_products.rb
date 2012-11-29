class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :user_id
      t.text :description
      t.float :price
      t.string :category

      t.timestamps
    end
    add_index :products, [:user_id, :created_at]
  end
end

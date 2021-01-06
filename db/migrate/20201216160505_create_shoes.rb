class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.integer :brand_id
      t.string :color
      t.string :condition
      t.float :price

      t.timestamps
    end
  end
end

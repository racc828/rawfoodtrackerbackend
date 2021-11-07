class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.integer :category_id
      t.integer :ounces
      t.integer :meal_id

      t.timestamps
    end
  end
end

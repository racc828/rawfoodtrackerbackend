class AddCategoryNameToFood < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :category_name, :string
  end
end

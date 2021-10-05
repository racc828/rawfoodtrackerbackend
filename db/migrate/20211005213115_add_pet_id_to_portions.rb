class AddPetIdToPortions < ActiveRecord::Migration[6.1]
  def change
    add_column :portions, :pet_id, :integer
  end
end

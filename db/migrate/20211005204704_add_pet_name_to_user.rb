class AddPetNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :petName, :string
  end
end

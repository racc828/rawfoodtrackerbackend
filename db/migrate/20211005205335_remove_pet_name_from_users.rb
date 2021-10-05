class RemovePetNameFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :petname, :string
  end
end

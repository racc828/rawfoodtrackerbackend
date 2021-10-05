class ChangePetNameToPetName < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :petName, :petname
  end
end

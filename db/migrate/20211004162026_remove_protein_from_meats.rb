class RemoveProteinFromMeats < ActiveRecord::Migration[6.1]
  def change
    remove_column :meats, :protein, :string
  end
end

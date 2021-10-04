class AddProteinIdToMeats < ActiveRecord::Migration[6.1]
  def change
    add_column :meats, :protein_id, :integer
  end
end

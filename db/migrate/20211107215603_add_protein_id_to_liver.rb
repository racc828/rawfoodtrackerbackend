class AddProteinIdToLiver < ActiveRecord::Migration[6.1]
  def change
    add_column :livers, :protein_id, :integer
  end
end

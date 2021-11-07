class AddProteinIdToOrgan < ActiveRecord::Migration[6.1]
  def change
    add_column :organs, :protein_id, :integer
  end
end

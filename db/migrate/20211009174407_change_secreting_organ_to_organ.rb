class ChangeSecretingOrganToOrgan < ActiveRecord::Migration[6.1]
  def change
    rename_column :portions, :secretingOrgan, :organ
  end
end

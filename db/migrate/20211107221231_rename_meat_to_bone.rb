class RenameMeatToBone < ActiveRecord::Migration[6.1]
  def change
    rename_table :meats, :bones
  end
end

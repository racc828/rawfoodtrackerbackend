class CreateProteins < ActiveRecord::Migration[6.1]
  def change
    create_table :proteins do |t|
      t.string :name

      t.timestamps
    end
  end
end

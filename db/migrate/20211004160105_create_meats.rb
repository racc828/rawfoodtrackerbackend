class CreateMeats < ActiveRecord::Migration[6.1]
  def change
    create_table :meats do |t|
      t.string :name
      t.string :protein
      t.integer :muscle
      t.integer :bone_content

      t.timestamps
    end
  end
end

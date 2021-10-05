class CreatePortions < ActiveRecord::Migration[6.1]
  def change
    create_table :portions do |t|
      t.integer :muscle
      t.integer :bone
      t.integer :vegetable
      t.integer :liver
      t.integer :secretingOrgan
      t.integer :nut
      t.integer :fruit

      t.timestamps
    end
  end
end

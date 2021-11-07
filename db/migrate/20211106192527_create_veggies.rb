class CreateVeggies < ActiveRecord::Migration[6.1]
  def change
    create_table :veggies do |t|
      t.string :name

      t.timestamps
    end
  end
end

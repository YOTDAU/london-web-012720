class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.integer :price
      t.boolean :house_trained
      t.references :species, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.boolean :bg_checks_complete
      t.integer :animal_capacity

      t.timestamps
    end
  end
end

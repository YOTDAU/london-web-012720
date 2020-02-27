class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.integer :vendor_id
      t.references :sweet, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end

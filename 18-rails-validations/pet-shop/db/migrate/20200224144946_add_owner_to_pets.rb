class AddOwnerToPets < ActiveRecord::Migration[6.0]
  def change
    add_reference :pets, :owner, foreign_key: true
  end
end

# frozen_string_literal: true

class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialism

      t.timestamps null: false
    end
  end
end

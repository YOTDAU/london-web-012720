# frozen_string_literal: true

class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end

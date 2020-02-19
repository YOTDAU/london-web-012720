class CreateAppointmentSymptoms < ActiveRecord::Migration
  def change
    create_table :appointment_symptoms do |t|
      t.integer :appointment_id
      t.integer :symptom_id

      t.timestamps null: false
    end
  end
end

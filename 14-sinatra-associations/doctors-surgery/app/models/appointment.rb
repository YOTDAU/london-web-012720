# frozen_string_literal: true

class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  has_many :appointment_symptoms
  has_many :symptoms, through: :appointment_symptoms

  accepts_nested_attributes_for :symptoms

  def new_symptom_name=(new_symptom_name)
    unless new_symptom_name.empty?
      new_symptom = Symptom.create(name: new_symptom_name)
      AppointmentSymptom.create(appointment: self, symptom: new_symptom)
    end
  end
end

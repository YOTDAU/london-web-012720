# frozen_string_literal: true

class Symptom < ActiveRecord::Base
  has_many :appointment_symptoms
  has_many :appointments, through: :appointment_symptoms
  has_many :patients, through: :appointments
end

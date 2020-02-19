# frozen_string_literal: true

class AppointmentSymptom < ActiveRecord::Base
  belongs_to :appointment
  belongs_to :symptom
end

# frozen_string_literal: true

class AppointmentsController < ApplicationController
  # GET: /appointments
  get '/appointments' do
    erb :"/appointments/index.html"
  end

  # GET: /appointments/new
  get '/appointments/new' do
    @patients = Patient.all
    @symptoms = Symptom.all

    if params[:doctor_id]
      @doctor = Doctor.find(params[:doctor_id])
    else
      @doctors = Doctor.all
    end

    erb :"/appointments/new.html"
  end

  # POST: /appointments
  post '/appointments' do
    appointment = Appointment.create(params[:appointment])

    unless params[:new_symptom_name].empty?
      new_symptom = Symptom.create(name: params[:new_symptom_name])
      AppointmentSymptom.create(appointment: appointment, symptom: new_symptom)
    end

    # symptom_ids: [3,1]

    redirect "/appointments/#{appointment.id}"
  end

  # GET: /appointments/5
  get '/appointments/:id' do
    @appointment = Appointment.find(params[:id])
    erb :"/appointments/show.html"
  end

  # GET: /appointments/5/edit
  get '/appointments/:id/edit' do
    erb :"/appointments/edit.html"
  end

  # PATCH: /appointments/5
  patch '/appointments/:id' do
    redirect '/appointments/:id'
  end

  # DELETE: /appointments/5/delete
  delete '/appointments/:id/delete' do
    redirect '/appointments'
  end
end

# frozen_string_literal: true

class AppointmentsController < ApplicationController
  # GET: /appointments
  get '/appointments' do
    erb :"/appointments/index.html"
  end

  # GET: /appointments/new
  get '/appointments/new' do
    @patients = Patient.all

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

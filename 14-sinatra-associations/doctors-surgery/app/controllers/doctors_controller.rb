# frozen_string_literal: true

class DoctorsController < ApplicationController
  # index
  # GET
  # /doctors

  get '/doctors' do
    @doctors = Doctor.all
    erb :'doctors/index.html'
  end

  get '/doctors/new' do
    @doctor = Doctor.new
    erb :'doctors/new.html'
  end

  post '/doctors' do
    doctor = Doctor.create(params[:doctor])
    # erb :'doctors/show_save.html'
    redirect "/doctors/#{doctor.id}"
  end

  patch '/doctors/:id' do
    # binding.pry
    doctor = Doctor.find(params[:id])
    doctor.update(params[:doctor])
    redirect "/doctors/#{doctor.id}"
  end

  get '/doctors/:id' do
    @doctor = Doctor.find(params[:id])
    erb(:'doctors/show')
  end

  get '/doctors/:id/edit' do
    @doctor = Doctor.find(params[:id])
    erb :'doctors/edit.html'
  end

  delete '/doctors/:id' do
    doctor = Doctor.find(params[:id])
    doctor.destroy
    redirect '/doctors'
  end
end

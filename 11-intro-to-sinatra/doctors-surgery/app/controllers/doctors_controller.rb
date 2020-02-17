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
    erb :'doctors/new.html'
  end

  get '/doctors/:id' do
    @doctor = Doctor.find(params[:id])
    erb :'doctors/show.html'
  end
end

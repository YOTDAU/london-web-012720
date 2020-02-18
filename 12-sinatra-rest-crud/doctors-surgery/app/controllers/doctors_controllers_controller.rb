# frozen_string_literal: true

class DoctorsController < ApplicationController
  # GET: /doctors_controllers
  get '/doctors_controllers' do
    erb :"/doctors_controllers/index.html"
  end

  # GET: /doctors_controllers/new
  get '/doctors_controllers/new' do
    erb :"/doctors_controllers/new.html"
  end

  # POST: /doctors_controllers
  post '/doctors_controllers' do
    redirect '/doctors_controllers'
  end

  # GET: /doctors_controllers/5
  get '/doctors_controllers/:id' do
    erb :"/doctors_controllers/show.html"
  end

  # GET: /doctors_controllers/5/edit
  get '/doctors_controllers/:id/edit' do
    erb :"/doctors_controllers/edit.html"
  end

  # PATCH: /doctors_controllers/5
  patch '/doctors_controllers/:id' do
    redirect '/doctors_controllers/:id'
  end

  # DELETE: /doctors_controllers/5/delete
  delete '/doctors_controllers/:id/delete' do
    redirect '/doctors_controllers'
  end
end

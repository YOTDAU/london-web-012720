# frozen_string_literal: true

Rails.application.routes.draw do
  get 'species', to: 'species#index', as: 'specieses'
  get 'species/:id', to: 'species#show', as: 'species'
  get 'species/new'
  post 'species'

  # resources :species
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

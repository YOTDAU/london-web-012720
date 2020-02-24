# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'species', to: 'species#index', as: 'species_index'
  # get 'species/new', to: 'species#new', as: 'new_species'
  # get 'species/:id', to: 'species#show', as: 'species'
  # get 'species/:id/edit', to: 'species#edit', as: 'edit_species'
  # patch 'species/:id', to: 'species#update'
  # delete 'species/:id', to: 'species#destroy'
  # post 'species', to: 'species#create'

  resources :species # , only: %i[index show edit update new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

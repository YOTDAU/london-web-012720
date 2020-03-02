Rails.application.routes.draw do
  post 'sessions', to: 'sessions#create', as: 'sessions'
  root to: 'answers#new'
  resources :users
  resources :answers
  resources :questions
  resources :instructors
  resources :cookies
  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

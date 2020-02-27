Rails.application.routes.draw do
  resources :vendor_sweets, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sweets', to: "sweets#index", as: "sweets"
  get '/sweets/:id', to: "sweets#show", as: "sweet"
  get '/vendors', to: "vendors#index", as: "vendors"
  get '/vendors/:id', to: "vendors#show", as: "vendor"

end

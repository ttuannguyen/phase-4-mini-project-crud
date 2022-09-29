Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/spices', to: 'spices#index'
  # post '/spices', to: 'spices#create' 

  resources :spices, only: [:index, :create, :update, :destroy]

end

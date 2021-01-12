Rails.application.routes.draw do
  root to: 'shoes#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/shoes' => 'shoes#index', as: 'shoes'
  # most expensive shoe
  get '/shoes/most_expensive' => 'shoes#most_expensive'
  # get '/shoes/:id' => 'shoes#show', as: 'shoe'
  
  resources :shoes # writes 8 routes for us

  resources :brands do 
    resources :shoes, only: [:new, :index, :create] # create 3 routes
  end
  
end

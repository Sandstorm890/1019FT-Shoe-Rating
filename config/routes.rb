Rails.application.routes.draw do
  root to: 'shoes#index'
  resources :brands
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/shoes' => 'shoes#index', as: 'shoes'
  # most expensive shoe
  get '/shoes/most_expensive' => 'shoes#most_expensive'
  # get '/shoes/:id' => 'shoes#show', as: 'shoe'
  
  resources :shoes  # writes 8 routes for us) 

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/shoes' => 'shoes#index', as: 'shoes'
   # most expensive shoe
   root to: 'shoes#index'
  get '/shoes/most_expensive' => 'shoes#most_expensive'
  # get '/shoes/:id' => 'shoes#show', as: 'shoe'
  
  resources :shoes  # writes 8 routes for us) 

end

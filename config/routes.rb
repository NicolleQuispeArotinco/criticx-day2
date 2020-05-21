Rails.application.routes.draw do
  #games
  resources :games
  
  #companies
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

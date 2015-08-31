Rails.application.routes.draw do

  get 'inicial' => 'gathers#new'
  get 'dashboard' => 'dashboard#show'
  root 'gathers#new'
  
  resources :gathers
  
end

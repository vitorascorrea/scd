Rails.application.routes.draw do

  get 'inicial' => 'gathers#new'  
  root 'gathers#new'
  
  resources :gathers
  
end

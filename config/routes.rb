Rails.application.routes.draw do

  get 'inicial' => 'gathers#new'
  get 'relatorio' => 'gathers#index'
  get 'dashboard' => 'dashboard#show'
  get 'relatorio' => 'gathers#index'
  root 'gathers#new'
  
  resources :gathers
  
end

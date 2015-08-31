Rails.application.routes.draw do

  get 'inicial' => 'gathers#new'
<<<<<<< HEAD
  get 'relatorio' => 'gathers#index'
=======
  get 'dashboard' => 'dashboard#show'
>>>>>>> 71f552316665444849e1bd88217709a16a5a1d90
  root 'gathers#new'
  
  resources :gathers
  
end

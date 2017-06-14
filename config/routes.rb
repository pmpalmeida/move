Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :cities, only: [ :show ]
  resources :pprofiles, only: [ :update, :destroy, :show ]

  resources :users, only: [ :show ]

  get 'payments', to: "payments#payview"



end


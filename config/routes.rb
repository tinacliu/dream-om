Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plots, only: [:index, :show] do
    resources :shortlists, only: [:create]
  end

  resources :shortlists, only: [:destroy] do
    resources :comments, only: [:create]
  end

  resources :comments, only: [:destroy]

  get 'profile', to: 'users#show', as: 'profile'
end

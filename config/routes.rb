Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # routes for browsing plots, adding to shortlist, add/edit/delete comments
  resources :plots, only: [:index, :show] do
    resources :shortlists, only: [:create]
  end

  resources :shortlists, only: [:destroy] do
    resources :comments, only: [:create]
  end

  resources :comments, only: [:destroy]

  # routes for browsing architects, booking an architects
  resources :architects, only: [:index, :show] do
    resources :appointments, only: [:create]
  end

  # we are showing projects in profile tab
   resources :projects, only: [:create]

  get 'profile', to: 'users#show', as: 'profile'
end

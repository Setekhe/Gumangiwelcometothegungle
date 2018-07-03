Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  get 'users/signed_up'

  resources :sessions, only: [:new, :create]
  get 'sessions/destroy'
  get 'ideas/index'
  resources :ideas do
    resources :comments
  end
  root 'ideas#index'
end

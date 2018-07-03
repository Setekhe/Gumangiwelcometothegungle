Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  get 'users/signed_up'
  get 'search/index'
  resources :sessions, only: [:new, :create]
  get 'sessions/destroy'
  get 'ideas/index'
  resources :ideas do
    resources :comments
  end
  get 'ideas/:id/complete', controller: :ideas, action: :complete
  root 'ideas#index'
end

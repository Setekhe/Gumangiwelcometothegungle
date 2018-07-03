Rails.application.routes.draw do
  resources :users, only: [:new, :create]

  get 'sessions/new'
  get 'ideas/index'
  resources :ideas do
    resources :comments
  end
  root 'ideas#index'
end

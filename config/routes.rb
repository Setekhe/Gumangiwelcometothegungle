Rails.application.routes.draw do
  get 'ideas/index'
  resources :ideas do
    resources :comments
  end
  root 'ideas#index'
end

Rails.application.routes.draw do
  get 'ideas/index'
  resources :ideas
    resources :comments
  root 'ideas#index'
end

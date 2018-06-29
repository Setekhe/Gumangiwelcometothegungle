Rails.application.routes.draw do
  get 'home/index'
  resources :ideas
    resources :comments
  root 'home#index'
end

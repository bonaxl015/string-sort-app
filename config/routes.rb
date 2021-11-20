Rails.application.routes.draw do
  root 'sort#index'
  resources :sort, only: [:index]
end

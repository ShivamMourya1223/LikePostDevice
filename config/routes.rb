Rails.application.routes.draw do
  
  devise_for :users
  root 'welcome#index'
  get 'welcome/index'
resources :posts do
  resources :likes
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

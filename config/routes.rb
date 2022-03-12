Rails.application.routes.draw do
  root 'welcome#index'
  resources :likes
  resources :comments
  resources :users
  resources :punks
  get '/fave', to: 'punks#most_likes' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

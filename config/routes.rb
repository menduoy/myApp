Rails.application.routes.draw do
  get 'users/new'
  get '/signup', to: 'user#new'
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/help',  to: 'static_pages#help'
  resources :users
end

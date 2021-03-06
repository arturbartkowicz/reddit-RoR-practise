Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end

  root to: 'posts#index'


  get '/pages', to: 'pages#index'
  post '/pages', to: 'pages#create'
  get '/pages/new', to: 'pages#new', as: 'new_page'
  get '/pages/:id', to: 'pages#show', as: 'page'
  get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  patch '/pages/:id', to: 'pages#update'
  delete '/pages/:id', to: 'pages#destroy'

  # (UP) In plain English you could read this as, get requests for the /pages path should go to... 
  # ... the PagestController's index method.
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

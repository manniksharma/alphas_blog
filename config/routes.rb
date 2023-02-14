Rails.application.routes.draw do

  resources :articles
require 'sidekiq/web'
mount sidekiq::Web => "/sidekiq"
 
  root to: "articles#index"

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/sign_out' => 'devise/sessions#destroy'
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

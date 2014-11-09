Rails.application.routes.draw do

  root "static#index"
  get "privacy" => 'static#privacy', :as => "privacy"

  get "terms" =>'static#terms', :as  => "terms"

  devise_for :users
  resources :users
  resources :notifications
  resources :posts
  resources :comments
end

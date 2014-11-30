Rails.application.routes.draw do

  get 'errors/file_not_found'

  get 'errors/unprocessable'

  get 'errors/internal_server_error'

  root "static#index"
  get "privacy" => 'static#privacy', :as => "privacy"

  get "terms" =>'static#terms', :as  => "terms"

  devise_for :users
  resources :users
  resources :notifications
  resources :posts
  resources :comments

  match '/404', to: 'errors#file_not_found', via: :all
	match '/422', to: 'errors#unprocessable', via: :all
	match '/500', to: 'errors#internal_server_error', via: :all
end

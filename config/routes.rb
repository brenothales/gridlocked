Rails.application.routes.draw do
  root "static#index"
  get "aboutus" => 'static#aboutus', :as => "aboutus"

  get "contactus" =>'static#contactus', :as  => "contactus"

  devise_for :users
  resources :users
  resources :posts
end

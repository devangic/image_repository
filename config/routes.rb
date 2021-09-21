Rails.application.routes.draw do
  devise_for :users

  resources :images
  root "images#index"
  get "/my_images", to: "images#my_images", as: :my_images
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

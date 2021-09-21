Rails.application.routes.draw do
  devise_for :users

  resources :images
  root "images#index"
  get "/my_images", to: "images#my_images", as: :my_images
  delete "/delete_images", to: "images#delete_images", as: :delete_images
  get "/change_permission/:id", to: "images#change_permission", as: :change_permission

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

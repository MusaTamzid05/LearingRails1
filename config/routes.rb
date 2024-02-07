Rails.application.routes.draw do
  resources :photos
  root 'main#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "gallery/photos/:photo_id", to: "main#show", as: "show_gallery_photo"
  post "gallery/comment/create/:photo_id", to: "main#add_comment", as: "add_comment"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

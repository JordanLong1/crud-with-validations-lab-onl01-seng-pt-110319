Rails.application.routes.draw do
  resources :songs

  root to: "songs_controller#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

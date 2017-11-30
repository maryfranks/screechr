Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :screeches, defaults: {format: :json}
  resource :user, defaults: {format: :json}
  resources :sessions, only: [:new, :create, :destroy]
end

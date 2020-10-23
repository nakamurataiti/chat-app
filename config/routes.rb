Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resources :users, only: [:edit, :update,]
  resources :rooms, only: [:new, :create,] do
    resources :messages, only: [:index, :create,]
  end
end

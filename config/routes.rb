Rails.application.routes.draw do
  root to: "homes#show"

  resource :session, only: [:new, :create, :destroy]

  resources :users, only: [:new, :create]
  resources :galleries do
    resources :images, only: [:new, :create, :show, :edit, :update, :destroy]
  end
end

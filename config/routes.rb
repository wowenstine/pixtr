Rails.application.routes.draw do
  root to: "galleries#index"
  resources :users, only: [:new]
  resources :galleries do
    resources :images, only: [:new, :create, :show, :edit, :update, :destroy]
  end
end

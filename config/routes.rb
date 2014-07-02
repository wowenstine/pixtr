Rails.application.routes.draw do
  root to: "galleries#index"
  resources :galleries do
    resources :images, only: [:new, :create, :show]
  end
end

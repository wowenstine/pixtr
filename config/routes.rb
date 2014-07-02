Rails.application.routes.draw do
  root to: "galleries#new"

  resources :galleries do
    resources :images
  end
end

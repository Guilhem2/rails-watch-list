Rails.application.routes.draw do

  root to: "lists#index"

  get "bookmarks", to: "bookmarks#index"
  get "bookmarks/:id", to: "bookmarks#show"
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :movies do
    resources :bookmarks, only: [:new, :create]
  end
  delete "bookmarks/:id", to: "bookmarks#destroy"
end

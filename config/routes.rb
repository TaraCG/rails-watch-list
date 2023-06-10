Rails.application.routes.draw do
  # get 'lists/new'
  # get 'bookmarks/new'
  # get 'movies/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to: 'movies#new'
  # resources :movies
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
  resources :movies, only: :show
end

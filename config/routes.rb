Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
  delete '/lists', to: 'lists#destroy_all'
end

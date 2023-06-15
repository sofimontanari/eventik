Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "pages/events", to: "pages#event_types"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events do
    get "events/:id/suppliers", to: "events#suppliers"
    resources :estimations, only: %i[new create]
  end
  resources :users, only: %i[index show]
  resources :estimations, except: %i[new create]
end

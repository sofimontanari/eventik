Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events do
    resources :estimations, only: %i[new create]
  end
  resources :users, only: %i[index show]
  resources :estimations, except: %i[new create]
end

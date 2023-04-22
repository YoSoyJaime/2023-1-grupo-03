Rails.application.routes.draw do
  resources :requests
  resources :comments
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }, 
                   path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'render/requests'
  get 'render/comments'
  get 'render/publications'
  root "render#index"
  get "/users/:user_id/publications", to: "publications#index"
  post "/users/:user_id/publications", to: "publications#create"
  get "/users/:user_id/publications/new", to: "publications#new"
  get "/users/:user_id/publications/:id/edit", to: "publications#edit"
  get "/users/:user_id/publications/:id", to: "publications#show"
  patch "/users/:user_id/publications/:id", to: "publications#update"
  put "/users/:user_id/publications/:id", to: "publications#update"
  delete "/users/:user_id/publications/:id", to: "publications#destroy"

  resources :courses
  
end

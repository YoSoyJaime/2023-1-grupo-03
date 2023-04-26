Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users, :path_prefix => 'd', controllers: { sessions: 'users/sessions', registrations: 'users/registrations' },
                    path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' } 
  
  resources :requests
  resources :comments


=======

  devise_for :users, :path_prefix => 'd', controllers: { sessions: 'users/sessions', registrations: 'users/registrations' } 

  resources :requests
  resources :comments
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }, 

                   path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

>>>>>>> 0519835fb80097269d4fe3d91638a686d3fada3c
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  get 'render/requests'
  get 'render/comments'
  get 'render/publications'
  root "render#index"

  #get "/users/:user_id/publications", to: "publications#index"
  #post "/users/:user_id/publications", to: "publications#create"
  #get "/users/:user_id/publications/new", to: "publications#new"
  #get "/users/:user_id/publications/:id/edit", to: "publications#edit"
  #get "/users/:user_id/publications/:id", to: "publications#show"
  #patch "/users/:user_id/publications/:id", "publications#update"
  #put "/users/:user_id/publications/:id", "publications#update"
  #delete "/users/:user_id/publications/:id", "publications#destroy"
  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get'
  resources :users, only: [:show] do
    resources :reviews
  end
  resources :publications 

<<<<<<< HEAD
=======

>>>>>>> 0519835fb80097269d4fe3d91638a686d3fada3c
  get "/users/:user_id/publications", to: "publications#index"
  post "/users/:user_id/publications", to: "publications#create"
  get "/users/:user_id/publications/new", to: "publications#new"
  get "/users/:user_id/publications/:id/edit", to: "publications#edit"
  get "/users/:user_id/publications/:id", to: "publications#show"
  patch "/users/:user_id/publications/:id", to: "publications#update"
  put "/users/:user_id/publications/:id", to: "publications#update"
  delete "/users/:user_id/publications/:id", to: "publications#destroy"

  resources :courses
  
<<<<<<< HEAD
=======

>>>>>>> 0519835fb80097269d4fe3d91638a686d3fada3c
end

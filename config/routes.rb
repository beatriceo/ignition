Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_out: 'logout'}
  devise_scope :user do
    get '/logout', to: 'devise/sessions#destroy'
  end

  root to: 'pages#home'
  get '/listings', to: "listings#home", as: :listings_home
  get '/listings/:id', to: 'listings#display', as: :listing_home

  get '/users/:id', to: 'users#show', as: :user
  get '/users/:id/edit', to: 'users#edit', as: :user_edit
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/users/:user_id/listings/', to: 'listings#index', as: :listings
  get '/users/:user_id/listings/new', to: 'listings#new', as: :listing_new
  get '/users/:user_id/listings/:id', to: 'listings#show', as: :listing
  post '/users/:user_id/listings', to: 'listings#create'
  get '/users/:user_id/listings/:id/edit', to: 'listings#edit', as: :listing_edit
  patch '/users/:user_id/listings/:id', to: 'listings#update'
  delete '/users/:user_id/listings/:id', to: 'listings#destroy'

  get '/users/:user_id/offers', to: 'offers#index'
  post 'users/:user_id/offers', to: 'offers#confirm'
  delete 'users/:user_id/offers/:id', to: "offers#destroy"


  get '/users/:user_id/offers/pending/new', to: 'offers#new'
  post '/users/:user_id/offers/pending', to: 'offers#create'
  get '/users/:user_id/offers/pending', to: 'offers#pending'
  delete 'users/:user_id/offers/pending', to: 'offers#cancel'
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users do
  #   resources :listings, only: [:create, :new] do
  #     resources :offers, except: [:update, :edit]
  #   end
  # end
  # resources :listings, only: [:index, :show, :update, :edit, :destroy]

  # index show new create edit update destroy

  get '/listings/:id', to: 'listings#display', as: :listing_home


  get '/users/new', to: 'users#new'
  get '/users/:id', to: 'users#show', as: :user
  post '/users', to: 'users#create'
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

  get '/users/:user_id/listings/:listings_id/offers/new', to: 'offers#new'
  get '/users/:user_id/listings/:listings_id/offers', to: 'offers#index', as: :offers
  # get '/users/:user_id/listings/:listings_id/offers/:id', to: 'offers#show'
  post '/users/:user_id/listings/:listings_id/offers', to: 'offers#create'
  delete '/users/:user_id/listings/:listings_id/offers/:id', to: 'offers#destroy'



end

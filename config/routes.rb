Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :listings, only: [:create, :update, :edit, :destroy, :new] do
      resources :offers, except: [:update, :edit]
    end
  end
  resources :listings, only: [:index, :show]


end

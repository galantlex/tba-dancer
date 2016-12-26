Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "home#show"

  get '/comps' => 'comp#index'
  get '/comps/:id' => 'comp#show', as: 'comp_show'
  get '/dancers' => 'dancer#index'
  get '/dancers/:id' => 'dancer#show'
  get 'seeks/new' => 'seek#new', as: 'create_search'
end

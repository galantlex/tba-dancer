Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "home#show"

  get '/comps' => 'comp#index'
  get '/comps/:id' => 'comp#show', as: 'comp_show'
  get '/users' => 'user#index'
  get '/users/:id' => 'user#show', as: 'user_show'
  get '/profile' => 'user#profile', as: 'profile_show'
  get '/profile/edit' => 'user#edit', as: 'profile_edit'
  patch '/profile/edit' => 'user#save_edit'

  resources :seek

  post 'seek/new' => 'seek#create', as: 'create_search'
end

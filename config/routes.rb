Rails.application.routes.draw do
  get '/comps' => 'comp#index'
  get '/comps/:id' => 'comp#show'
  get '/dancers' => 'dancer#index'
  get '/dancers/:id' => 'dancer#show'
end

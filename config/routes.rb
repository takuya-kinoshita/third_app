Rails.application.routes.draw do
  get 'sessions/new'
  get "/signup", to: 'users#new'
  resources :users
  root "static_pages#top"
  get '/about', to: "static_pages#about"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

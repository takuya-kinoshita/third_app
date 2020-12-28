Rails.application.routes.draw do
  get "/signup", to: 'users#new'
  resources :users
  root "static_pages#top"
  get '/about', to: "static_pages#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: "main#index"

  get "/about", to: "about#index"

  get 'sign_up', to: "registeration#new"
  post 'sign_up', to: "registeration#create"

  get '/log_in', to: "session#new"
  post '/log_in', to: "session#create"
  delete '/logout', to: "session#destroy"

  get '/password', to: "passwords#edit", as: :edit_password
  patch '/password', to: "passwords#update", as: :update_password
end

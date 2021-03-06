Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users
  post "users/user_login", to: "users#user_login"
  post "users/create_user", to: "users#create_user"
  get "users/auto_login", to: "users#auto_login"


  # Tournaments
  get "tournaments/index", to: "tournaments#index"
  get "tournaments/:id/teams", to: "tournaments#teams"

  #teams
  get "teams/index", to: "teams#index"
  get "teams/:id/players", to: "teams#players"
end

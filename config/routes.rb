Rails.application.routes.draw do
  root "static_pages#home"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  resources :users

  devise_for :users, controllers: {
                       registrations: "users/registrations",
                       sessions: "users/sessions",
                       omniauth_callbacks: "users/omniauth_callbacks",
                       passwords: "users/passwords",
                     }

  devise_scope :user do
    get "login", to: "users/sessions#new"
    post "login", to: "users/sessions#create"
    delete "logout", to: "users/sessions#destroy"
    get "signup", to: "users/registrations#new"
    post "signup", to: "users/registrations#create"
    get "signup/cancel", to: "users/registrations#cancel"
    get "user", to: "users_/registrations#edit"
    patch "user", to: "users_/registrations#update"
    put "user", to: "users_/registrations#update"
    delete "user", to: "users_/registrations#destroy"
    get "password", to: "users/passwords#new"
    post "password", to: "users/passwords#create"
    get "password/edit", to: "users/passwords#edit"
    patch "password", to: "users/passwords#update"
    put "password", to: "users/passwords#update"
  end
end

Rails.application.routes.draw do
  root "static_pages#home"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"

  devise_for :users, skip: :all
  devise_scope :user do
    get "login", to: "devise/sessions#new", as: :new_user_session
    post "login", to: "devise/sessions#create", as: :user_session
    delete "logout", to: "devise/sessions#destroy", as: :destroy_user_session
    get "signup", to: "devise_/registrations#new", as: :new_user_registration
    post "signup", to: "devise_/registrations#create", as: :user_registration
    get "signup/cancel", to: "devise_/registrations#cancel", as: :cancel_user_registration
    get "user", to: "devise_/registrations#edit", as: :edit_user_registration
    patch "user", to: "devise_/registrations#update", as: nil
    put "user", to: "devise_/registrations#update", as: :update_user_registration
    delete "user", to: "devise_/registrations#destroy", as: :destroy_user_registration
    get "password", to: "devise/passwords#new", as: :new_user_password
    post "password", to: "devise/passwords#create", as: :user_password
    get "password/edit", to: "devise/passwords#edit", as: :edit_user_password
    patch "password", to: "devise/passwords#update"
    put "password", to: "devise/passwords#update", as: :update_user_password
  end
end

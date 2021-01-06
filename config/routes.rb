Rails.application.routes.draw do
  resources :submissions
  resources :form_elements
  resources :custom_forms
  root to: "static#index"
  devise_for :users, controllers: {sessions: "users/sessions"}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

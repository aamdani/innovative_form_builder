Rails.application.routes.draw do
  root to: "static#index"
  devise_for :users, controllers: {sessions: "users/sessions"}
  resources :submissions
  resources :form_elements
  resources :custom_forms do
    resources :submissions
    resources :form_elements
  end
end

Rails.application.routes.draw do
  resources :links
  resources :tags
  resources :courses
  resources :users

  root "welcome#index"
end

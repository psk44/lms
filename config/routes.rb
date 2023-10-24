Rails.application.routes.draw do
  resources :senseis
  resources :courses
  resources :students

  get 'search', :to => "search#index"

  # Defines the root path route ("/")
  root "dashboard#index"
end

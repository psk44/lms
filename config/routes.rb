Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  devise_for :users

  resources :senseis
  resources :students

  resources :courses do
    resources :assignments
  end

  get 'search', :to => "search#index"

  # Defines the root path route ("/")
  root "dashboard#index"
end

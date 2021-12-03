Rails.application.routes.draw do
  devise_for :users
  root to: "books#index"
  resources :books
  get 'users' => 'users#list'
  get '/users/:id' => 'users#details'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end

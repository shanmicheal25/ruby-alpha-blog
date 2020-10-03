Rails.application.routes.draw do
  root "page#home"
  get "about" => "page#about"

  resources :articles, only: [:show]
end

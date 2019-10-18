Rails.application.routes.draw do
  devise_for :users
  root to: "api/home#index"
  namespace :api do
    post "follow", to: "follows#create"
    get 'profile/:id', to: "profile#show"
  end
end

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # remove custom routes
  root to: "api/home#index"
  post "follow", to: "api/follows#create"
  get 'api/profile/:id', to: "api/profile#show"
end

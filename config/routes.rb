Rails.application.routes.draw do
  root 'events#new'
  post '/events', to: 'events#index'
  resources :events, only: [:new, :show, :index]
end

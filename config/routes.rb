Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :messages, only: [:home, :show]

  get '/random', to: 'messages#random'
end

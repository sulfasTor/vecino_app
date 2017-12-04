Rails.application.routes.draw do
  resources :vecinos
  get 'welcome/index'
  devise_for :users, controllers: { registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth_callbacks'}
  
  get '/users' => 'vecinos#index', as: :user_root
  
  root "welcome#index"
end

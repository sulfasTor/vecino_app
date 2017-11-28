Rails.application.routes.draw do
  get 'welcome/index'
  resources :vecinos
  
  root "welcome#index"
end

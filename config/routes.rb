Rails.application.routes.draw do

  get 'searches/search'

  root 'home#index'

  devise_for :users
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

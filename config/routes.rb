Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end

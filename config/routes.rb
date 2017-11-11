Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/home'
  get 'static_pages/help'

  root 'titles#index'
  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
   end

  resources :titles

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

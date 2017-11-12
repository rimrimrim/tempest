Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'

  root 'titles#index'
  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
   end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :titles

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

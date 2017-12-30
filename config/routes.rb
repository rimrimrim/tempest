Rails.application.routes.draw do

  get 'listings/index'

  get 'listings/show'

  get 'listings/new'

  get 'listings/create'

  get 'listings/edit'

  get 'listings/update'

  get 'static_pages/home'
  get 'static_pages/help'

  root 'titles#index'
  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
   end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", :registrations => 'registrations' }

  resources :titles
  resources :listings
  resources :users
  resources :photos, only: [:create, :destroy]
  root to: "home#index"

  get 'manage-listing/:id/basics' => 'listings#basics', as: 'manage_listing_basics'
  get 'manage-listing/:id/description' => 'listings#description', as: 'manage_listing_description'
  get 'manage-listing/:id/address' => 'listings#address', as: 'manage_listing_address'
  get 'manage-listing/:id/price' => 'listings#price', as: 'manage_listing_price'
  get 'manage-listing/:id/calendar' => 'listings#calendar', as: 'manage_listing_calendar'
  get 'manage-listing/:id/photos' => 'listings#photos', as: 'manage_listing_photos'
  get 'manage-listing/:id/acount' => 'listings#acount', as: 'manage_listing_acount'
  get 'manage-listing/:id/publish' => 'listings#publish', as: 'manage_listing_publish'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

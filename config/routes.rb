SoundClone::Application.routes.draw do
  get "pages/searchResults"

  get "pages/home"

  get "pages/contact"

  get "pages/about"

  get "pages/search"

resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,   :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]
  resources :follower_relationships, :only => [:create, :destroy]
  
  match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  match '/search',  :to => 'pages#search'
  match '/results',  :to => 'pages#searchResults'
  
  
  root :to => 'pages#home'
  
end

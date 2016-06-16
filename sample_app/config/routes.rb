Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'signup'  => 'users#new'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  
  get 'login' => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => 'sessions#destroy'

  root 'static_pages#home'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
end

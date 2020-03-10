Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/index'
  get 'persons/profile'
  devise_for :users       # created by device

  root 'home#index'

  get 'persons/profile', as: 'user_root'

  get 'users/update', as: 'update_users'

  resources :users, :collection => { :complete => :put}

  resources :users do
    resources :stickies
  end
  #get 'sticky#index'
  get 'sticky/index'
  get 'stickies' => 'stickies#destroy'
  #get 'persons/block', as: 'block'
  post 'sticky'    => "stickies#create"


end

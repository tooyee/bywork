Rails.application.routes.draw do

  resources :flowworks
  resources :flowdeals
  resources :flowitems
  resources :unitworks
  resources :unitdeals
  resources :unititems
  resources :roleconfigs
  resources :roles
  get 'admin' => 'admin#index'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  # get 'admin/index'
  #
  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'

  resources :users
  root 'unititems#index', as: 'unititems_index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

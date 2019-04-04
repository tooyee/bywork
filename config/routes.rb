Rails.application.routes.draw do


  resources :caseworklinethings
  resources :caseworklinekinds
  resources :things
  resources :kinds

  resources :caseworkesselines
  resources :dutyworks
  resources :dutydeals
  resources :dutyitems
  # resources :caseworks

  resources :esses, :esselines

  resources :caseitems, :casedeals, :caseflowworks, :caseworks, :caseworklines

  resources :flowdeals, :flowworks

  resources :flowitems do
    resources :flowdeals do
      resources :flowworks
    end
    get 'search', on: :collection
  end

  resources :unititems, :unitdeals, :unitworks
  resources :roleconfigs
  resources :roles
  get 'admin' => 'admin#index'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end


  resources :caseworks do
    resources :caseworklines
    resources :caseworkesselines



        # get 'clone', on: :member
    # get 'copyform', on: :member
  end


  resources :caseworks do
    resources :kinds
    resources :things
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

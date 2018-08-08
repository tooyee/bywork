Rails.application.routes.draw do

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
  resources :activeunits
  resources :transactionunits
  resources :businessunits
  root 'businessunits#index', as: 'businessunits_index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

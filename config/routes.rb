Rails.application.routes.draw do

  root 'access#index'

  get 'access/new'

  get 'access/create'

  get 'access/login'

  get 'access/logout'

  resources :users do
    resources :items
    resources :transactions
  end

  resources :categories

end

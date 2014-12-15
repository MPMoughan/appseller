Rails.application.routes.draw do

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

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

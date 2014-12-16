 Rails.application.routes.draw do

  # get 'sales/index'

  # get 'sales/create'

  # get 'sales/show'

  # get 'sales/new'

  # get 'sales/edit'

  # get 'sales/destroy'

  get 'items/index'

  get 'items/create'

  get 'items/show'

  get 'items/new'

  get 'items/edit'

  get 'items/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  root 'access#index'

  get 'access/new'

  get 'signup', to: 'access#create', as: 'create_user'

  post 'signup', to: 'access#create'

  get 'access/login', to: 'access#login', as: 'login'

  post 'access/login', to: 'access#login'

  get 'access/logout'

  resources :users do
    resources :items
    resources :sales
  end

  resources :categories

end


#                Prefix Verb   URI Pattern                                     Controller#Action
#                  root GET    /                                               access#index
#            access_new GET    /access/new(.:format)                           access#new
#           create_user GET    /signup(.:format)                               access#create
#                signup POST   /signup(.:format)                               access#create
#          access_login GET    /access/login(.:format)                         access#login
#         access_logout GET    /access/logout(.:format)                        access#logout
#            user_items GET    /users/:user_id/items(.:format)                 items#index
#                       POST   /users/:user_id/items(.:format)                 items#create
#         new_user_item GET    /users/:user_id/items/new(.:format)             items#new
#        edit_user_item GET    /users/:user_id/items/:id/edit(.:format)        items#edit
#             user_item GET    /users/:user_id/items/:id(.:format)             items#show
#                       PATCH  /users/:user_id/items/:id(.:format)             items#update
#                       PUT    /users/:user_id/items/:id(.:format)             items#update
#                       DELETE /users/:user_id/items/:id(.:format)             items#destroy
#     user_transactions GET    /users/:user_id/transactions(.:format)          transactions#index
#                       POST   /users/:user_id/transactions(.:format)          transactions#create
#  new_user_transaction GET    /users/:user_id/transactions/new(.:format)      transactions#new
# edit_user_transaction GET    /users/:user_id/transactions/:id/edit(.:format) transactions#edit
#      user_transaction GET    /users/:user_id/transactions/:id(.:format)      transactions#show
#                       PATCH  /users/:user_id/transactions/:id(.:format)      transactions#update
#                       PUT    /users/:user_id/transactions/:id(.:format)      transactions#update
#                       DELETE /users/:user_id/transactions/:id(.:format)      transactions#destroy
#                 users GET    /users(.:format)                                users#index
#                       POST   /users(.:format)                                users#create
#              new_user GET    /users/new(.:format)                            users#new
#             edit_user GET    /users/:id/edit(.:format)                       users#edit
#                  user GET    /users/:id(.:format)                            users#show
#                       PATCH  /users/:id(.:format)                            users#update
#                       PUT    /users/:id(.:format)                            users#update
#                       DELETE /users/:id(.:format)                            users#destroy
#            categories GET    /categories(.:format)                           categories#index
#                       POST   /categories(.:format)                           categories#create
#          new_category GET    /categories/new(.:format)                       categories#new
#         edit_category GET    /categories/:id/edit(.:format)                  categories#edit
#              category GET    /categories/:id(.:format)                       categories#show
#                       PATCH  /categories/:id(.:format)                       categories#update
#                       PUT    /categories/:id(.:format)                       categories#update
#                       DELETE /categories/:id(.:format)                       categories#destroy

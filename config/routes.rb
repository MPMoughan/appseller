 Rails.application.routes.draw do

  # get 'sales/index'

  # get 'sales/create'

  # get 'sales/show'

  # get 'sales/new'

  # get 'sales/edit'

  # get 'sales/destroy'

  get 'payment', to: 'application#braintree', as: 'payment'

  post "/create_transaction", to: 'application#braintree'

  get 'items/index'

  get 'items/create'

  get 'items/show'

  get 'items/new'

  get 'items/edit'

  get 'items/destroy'

  get 'users/index'

  # root route
  root 'access#index'

  # get request to access sign-up page
  get 'signup', to: 'access#new', as: 'create_user'

  # post request to sign-up form
  post 'signup', to: 'access#create'

  # get request to login page
  get 'access/login', to: 'access#login', as: 'login'

  # post request for signing in
  post 'access/login', to: 'access#attempt_login'

  # get request for logging out
  get 'access/logout', to: 'access#logout', as: 'logout'

  # get request to user home page, directed here after logging in
  get 'users/index', to: 'users#index', as: "home"

  # get request for show page - "user's profile page"
  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  resources :users do
    resources :items
    resources :sales
  end

  resources :categories

end


#         Prefix Verb   URI Pattern                              Controller#Action
#    items_index GET    /items/index(.:format)                   items#index
#   items_create GET    /items/create(.:format)                  items#create
#     items_show GET    /items/show(.:format)                    items#show
#      items_new GET    /items/new(.:format)                     items#new
#     items_edit GET    /items/edit(.:format)                    items#edit
#  items_destroy GET    /items/destroy(.:format)                 items#destroy
#    users_index GET    /users/index(.:format)                   users#index
#           root GET    /                                        access#index
#    create_user GET    /signup(.:format)                        access#new
#         signup POST   /signup(.:format)                        access#create
#          login GET    /access/login(.:format)                  access#login
#   access_login POST   /access/login(.:format)                  access#attempt_login
#         logout GET    /access/logout(.:format)                 access#logout
#           home GET    /users/index(.:format)                   users#index
#     users_show GET    /users/show(.:format)                    users#show
#      users_new GET    /users/new(.:format)                     users#new
#     users_edit GET    /users/edit(.:format)                    users#edit
#   users_update GET    /users/update(.:format)                  users#update
#  users_destroy GET    /users/destroy(.:format)                 users#destroy
#     user_items GET    /users/:user_id/items(.:format)          items#index
#                POST   /users/:user_id/items(.:format)          items#create
#  new_user_item GET    /users/:user_id/items/new(.:format)      items#new
# edit_user_item GET    /users/:user_id/items/:id/edit(.:format) items#edit
#      user_item GET    /users/:user_id/items/:id(.:format)      items#show
#                PATCH  /users/:user_id/items/:id(.:format)      items#update
#                PUT    /users/:user_id/items/:id(.:format)      items#update
#                DELETE /users/:user_id/items/:id(.:format)      items#destroy
#     user_sales GET    /users/:user_id/sales(.:format)          sales#index
#                POST   /users/:user_id/sales(.:format)          sales#create
#  new_user_sale GET    /users/:user_id/sales/new(.:format)      sales#new
# edit_user_sale GET    /users/:user_id/sales/:id/edit(.:format) sales#edit
#      user_sale GET    /users/:user_id/sales/:id(.:format)      sales#show
#                PATCH  /users/:user_id/sales/:id(.:format)      sales#update
#                PUT    /users/:user_id/sales/:id(.:format)      sales#update
#                DELETE /users/:user_id/sales/:id(.:format)      sales#destroy
#          users GET    /users(.:format)                         users#index
#                POST   /users(.:format)                         users#create
#       new_user GET    /users/new(.:format)                     users#new
#      edit_user GET    /users/:id/edit(.:format)                users#edit
#           user GET    /users/:id(.:format)                     users#show
#                PATCH  /users/:id(.:format)                     users#update
#                PUT    /users/:id(.:format)                     users#update
#                DELETE /users/:id(.:format)                     users#destroy
#     categories GET    /categories(.:format)                    categories#index
#                POST   /categories(.:format)                    categories#create
#   new_category GET    /categories/new(.:format)                categories#new
#  edit_category GET    /categories/:id/edit(.:format)           categories#edit
#       category GET    /categories/:id(.:format)                categories#show
#                PATCH  /categories/:id(.:format)                categories#update
#                PUT    /categories/:id(.:format)                categories#update
#                DELETE /categories/:id(.:format)                categories#destroy
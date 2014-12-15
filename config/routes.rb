 Rails.application.routes.draw do

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
    resources :transactions
  end

  resources :categories

end


#                Prefix Verb   URI Pattern                                     Controller#Action
#                  root GET    /                                               access#index
#           create_user GET    /signup(.:format)                               access#new
#                signup POST   /signup(.:format)                               access#create
#                 login GET    /access/login(.:format)                         access#login
#          access_login POST   /access/login(.:format)                         access#attempt_login
#                logout GET    /access/logout(.:format)                        access#logout
#                  home GET    /users/index(.:format)                          users#index
#            users_show GET    /users/show(.:format)                           users#show
#             users_new GET    /users/new(.:format)                            users#new
#            users_edit GET    /users/edit(.:format)                           users#edit
#          users_update GET    /users/update(.:format)                         users#update
#         users_destroy GET    /users/destroy(.:format)                        users#destroy
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
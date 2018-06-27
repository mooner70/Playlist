Rails.application.routes.draw do
  root 'users#index'
  get 'login' => 'sessions#create', as: 'new_login'
  post 'login' => 'sessions#new', as: 'login'
  delete 'logout' => 'sessions#destroy', as: 'logout'
  post '/adds/:id' => 'adds#create'
  resources :users
  resources :songs
  resources :adds

#   Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         users#index
# new_login GET    /login(.:format)          sessions#create
#     login POST   /login(.:format)          sessions#new
#    logout DELETE /logout(.:format)         sessions#destroy
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create <------
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy
#     songs GET    /songs(.:format)          songs#index <------
#           POST   /songs(.:format)          songs#create
#  new_song GET    /songs/new(.:format)      songs#new
# edit_song GET    /songs/:id/edit(.:format) songs#edit
#      song GET    /songs/:id(.:format)      songs#show 
#           PATCH  /songs/:id(.:format)      songs#update
#           PUT    /songs/:id(.:format)      songs#update
#           DELETE /songs/:id(.:format)      songs#destroy
#      adds GET    /adds(.:format)           adds#index
#           POST   /adds(.:format)           adds#create 
#   new_add GET    /adds/new(.:format)       adds#new
#  edit_add GET    /adds/:id/edit(.:format)  adds#edit
#       add GET    /adds/:id(.:format)       adds#show
#           PATCH  /adds/:id(.:format)       adds#update
#           PUT    /adds/:id(.:format)       adds#update
#           DELETE /adds/:id(.:format)       adds#destroy
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

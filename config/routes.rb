InviteApp::Application.routes.draw do



  # Routes for the Host resource:
  # CREATE
  get '/hosts/new', controller: 'hosts', action: 'new', as: 'new_host'
  post '/hosts', controller: 'hosts', action: 'create'

  # READ
  get '/hosts', controller: 'hosts', action: 'index', as: 'hosts'
  get '/hosts/:id', controller: 'hosts', action: 'show', as: 'host'

  # UPDATE
  get '/hosts/:id/edit', controller: 'hosts', action: 'edit', as: 'edit_host'
  put '/hosts/:id', controller: 'hosts', action: 'update'

  # DELETE
  delete '/hosts/:id', controller: 'hosts', action: 'destroy'
  #------------------------------

  # Routes for the Invitation resource:
  # CREATE
  get '/invitations/new', controller: 'invitations', action: 'new', as: 'new_invitation'
  post '/invitations', controller: 'invitations', action: 'create'

  # READ
  get '/invitations', controller: 'invitations', action: 'index', as: 'invitations'
  get '/invitations/:id', controller: 'invitations', action: 'show', as: 'invitation'

  # UPDATE
  get '/invitations/:id/edit', controller: 'invitations', action: 'edit', as: 'edit_invitation'
  put '/invitations/:id', controller: 'invitations', action: 'update'

  # DELETE
  delete '/invitations/:id', controller: 'invitations', action: 'destroy'
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get '/events/new', controller: 'events', action: 'new', as: 'new_event'
  post '/events', controller: 'events', action: 'create'

  # READ
  get '/events', controller: 'events', action: 'index', as: 'events'
  get '/events/:id', controller: 'events', action: 'show', as: 'event'

  # UPDATE
  get '/events/:id/edit', controller: 'events', action: 'edit', as: 'edit_event'
  put '/events/:id', controller: 'events', action: 'update'

  # DELETE
  delete '/events/:id', controller: 'events', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

NonScaffoldedRails::Application.routes.draw do
  
  root :to => 'info#index'
  # URL / will map to index action of the info controller.
  
  match 'about_us' => 'info#about', :as => 'about'
  # URL /about will map to about action of the info controller.
  
  match 'contact_us' => 'info#contact', :as => 'contact'
  # URL /contact will map to contact action of the info controller.
  
  match 'posts' => 'posts#index', :as => 'posts', :via => :get
  # URL /posts will map to the index action of the posts controller.
  
  match 'posts/new' => 'posts#new', :as => 'new_post', :via => :get
  
  match 'posts' => 'posts#create', :as => 'create_post', :via => :post
  # Only execute the create action if we POST to /posts
  
  match 'posts/:id' => 'posts#show', :as => 'post', :via => :get
  
  match 'posts/:id' => 'posts#destroy', :as => 'delete_post', :via => :delete
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

Websites::Application.routes.draw do
  match 'admin/front' => 'admin/front#index', :as => 'admin_front'

  match 'uk' => 'front#uk'

  match 'search' => 'admin/front#search', :as => 'site_search'

  root :to => 'front#index'

  match '/apis/contact' => 'apis#contact', :via => [:post]

  #match 'vending/:id' => 'categories#show'
  
  #match 'vending/:category_id/:id' => 'machines#show'

  #resources :machines, :path => "/vending-solutions/:category_id/:machines"
  #resources :categories, :path => "/vending-solutions/:category_id"
	
	#resources :vending_solutions, :controller => "categories" do 
	match 'vending-machines/:id' => 'categories#show', :as => 'vending_solution'
		#resources :machines, :as => "machine"

	match 'vending-machines/:vending_solution_id/:id' => 'machines#show', :as => 'vending_solution_machine'

  
   match '/opportunity' => 'static#opportunity'
   match '/company-profile' => 'static#about'
   match '/terms' => 'static#terms'
   

  #match 'search' => 'front#search', :as => 'site_search'


	#scope "/admin" do
	#	resources :categories, :features, :machines, :sites
	#end
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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
	
	  # Resource routes for controller "categories"

end

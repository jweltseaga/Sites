# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Websites::Application.routes.draw do


  # Resource routes for controller "pressreleases"
  get 'pressreleases(.:format)' => 'pressreleases#index', :as => 'pressreleases'
  get 'pressreleases/:id(.:format)' => 'pressreleases#show', :as => 'pressrelease', :constraints => { :id => %r([^/.?]+) }

  # Owner routes for controller "pressreleases"
  post 'sites/:site_id/pressreleases(.:format)' => 'pressreleases#create_for_site', :as => 'create_pressrelease_for_site'


  # Resource routes for controller "brochure_assignments"
  get 'brochure_assignments/:id(.:format)' => 'brochure_assignments#show', :as => 'brochure_assignment', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "manuals"
  get 'manuals(.:format)' => 'manuals#index', :as => 'manuals'
  get 'manuals/:id(.:format)' => 'manuals#show', :as => 'manual', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "categories"
  get 'categories(.:format)' => 'categories#index', :as => 'categories'
  get 'categories/:id(.:format)' => 'categories#show', :as => 'category', :constraints => { :id => %r([^/.?]+) }

  # Owner routes for controller "categories"
  post 'sites/:site_id/categories(.:format)' => 'categories#create_for_site', :as => 'create_category_for_site'



  # Lifecycle routes for controller "users"
  post 'users/signup(.:format)' => 'users#do_signup', :as => 'do_user_signup'
  get 'users/signup(.:format)' => 'users#signup', :as => 'user_signup'
  put 'users/:id/activate(.:format)' => 'users#do_activate', :as => 'do_user_activate'
  get 'users/:id/activate(.:format)' => 'users#activate', :as => 'user_activate'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # Resource routes for controller "users"
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  # Show action routes for controller "users"
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # User routes for controller "users"
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'


  # Resource routes for controller "brochures"
  get 'brochures(.:format)' => 'brochures#index', :as => 'brochures'
  get 'brochures/:id(.:format)' => 'brochures#show', :as => 'brochure', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "manual_assignments"
  get 'manual_assignments/:id(.:format)' => 'manual_assignments#show', :as => 'manual_assignment', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "machine_assignments"
  get 'machine_assignments/:id(.:format)' => 'machine_assignments#show', :as => 'machine_assignment', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "features"
  get 'features/:id(.:format)' => 'features#show', :as => 'feature', :constraints => { :id => %r([^/.?]+) }



  # Resource routes for controller "sites"
  get 'sites/:id(.:format)' => 'sites#show', :as => 'site', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "machines"
  get 'machines(.:format)' => 'machines#index', :as => 'machines'
  get 'machines/:id(.:format)' => 'machines#show', :as => 'machine', :constraints => { :id => %r([^/.?]+) }


  # Index action routes for controller "apis"
  get 'apis/sitemap(.:format)', :as => 'sitemap_apis'
  get 'apis/press(.:format)', :as => 'press_apis'

  namespace :admin do


    # Resource routes for controller "admin/machines"
    get 'machines(.:format)' => 'machines#index', :as => 'machines'
    get 'machines/new(.:format)', :as => 'new_machine'
    get 'machines/:id/edit(.:format)' => 'machines#edit', :as => 'edit_machine'
    get 'machines/:id(.:format)' => 'machines#show', :as => 'machine', :constraints => { :id => %r([^/.?]+) }
    post 'machines(.:format)' => 'machines#create', :as => 'create_machine'
    put 'machines/:id(.:format)' => 'machines#update', :as => 'update_machine', :constraints => { :id => %r([^/.?]+) }
    delete 'machines/:id(.:format)' => 'machines#destroy', :as => 'destroy_machine', :constraints => { :id => %r([^/.?]+) }


    # Resource routes for controller "admin/manual_assignments"
    get 'manual_assignments/new(.:format)', :as => 'new_manual_assignment'
    post 'manual_assignments(.:format)' => 'manual_assignments#create', :as => 'create_manual_assignment'
    put 'manual_assignments/:id(.:format)' => 'manual_assignments#update', :as => 'update_manual_assignment', :constraints => { :id => %r([^/.?]+) }
    delete 'manual_assignments/:id(.:format)' => 'manual_assignments#destroy', :as => 'destroy_manual_assignment', :constraints => { :id => %r([^/.?]+) }

    # Owner routes for controller "admin/manual_assignments"
    post 'machines/:machine_id/manual_assignments(.:format)' => 'manual_assignments#create_for_machine', :as => 'create_manual_assignment_for_machine'

    # Reorder routes for controller "admin/manual_assignments"
    post 'manual_assignments/reorder(.:format)', :as => 'reorder_manual_assignments'


    # Resource routes for controller "admin/sites"
    get 'sites(.:format)' => 'sites#index', :as => 'sites'
    get 'sites/new(.:format)', :as => 'new_site'
    get 'sites/:id/edit(.:format)' => 'sites#edit', :as => 'edit_site'
    get 'sites/:id(.:format)' => 'sites#show', :as => 'site', :constraints => { :id => %r([^/.?]+) }
    post 'sites(.:format)' => 'sites#create', :as => 'create_site'
    put 'sites/:id(.:format)' => 'sites#update', :as => 'update_site', :constraints => { :id => %r([^/.?]+) }
    delete 'sites/:id(.:format)' => 'sites#destroy', :as => 'destroy_site', :constraints => { :id => %r([^/.?]+) }


    # Resource routes for controller "admin/pressreleases"
    get 'pressreleases(.:format)' => 'pressreleases#index', :as => 'pressreleases'
    get 'pressreleases/new(.:format)', :as => 'new_pressrelease'
    get 'pressreleases/:id/edit(.:format)' => 'pressreleases#edit', :as => 'edit_pressrelease'
    get 'pressreleases/:id(.:format)' => 'pressreleases#show', :as => 'pressrelease', :constraints => { :id => %r([^/.?]+) }
    post 'pressreleases(.:format)' => 'pressreleases#create', :as => 'create_pressrelease'
    put 'pressreleases/:id(.:format)' => 'pressreleases#update', :as => 'update_pressrelease', :constraints => { :id => %r([^/.?]+) }
    delete 'pressreleases/:id(.:format)' => 'pressreleases#destroy', :as => 'destroy_pressrelease', :constraints => { :id => %r([^/.?]+) }

    # Owner routes for controller "admin/pressreleases"
    post 'sites/:site_id/pressreleases(.:format)' => 'pressreleases#create_for_site', :as => 'create_pressrelease_for_site'


    # Resource routes for controller "admin/manuals"
    get 'manuals(.:format)' => 'manuals#index', :as => 'manuals'
    get 'manuals/new(.:format)', :as => 'new_manual'
    get 'manuals/:id/edit(.:format)' => 'manuals#edit', :as => 'edit_manual'
    get 'manuals/:id(.:format)' => 'manuals#show', :as => 'manual', :constraints => { :id => %r([^/.?]+) }
    post 'manuals(.:format)' => 'manuals#create', :as => 'create_manual'
    put 'manuals/:id(.:format)' => 'manuals#update', :as => 'update_manual', :constraints => { :id => %r([^/.?]+) }
    delete 'manuals/:id(.:format)' => 'manuals#destroy', :as => 'destroy_manual', :constraints => { :id => %r([^/.?]+) }


    # Resource routes for controller "admin/brochures"
    get 'brochures(.:format)' => 'brochures#index', :as => 'brochures'
    get 'brochures/new(.:format)', :as => 'new_brochure'
    get 'brochures/:id/edit(.:format)' => 'brochures#edit', :as => 'edit_brochure'
    get 'brochures/:id(.:format)' => 'brochures#show', :as => 'brochure', :constraints => { :id => %r([^/.?]+) }
    post 'brochures(.:format)' => 'brochures#create', :as => 'create_brochure'
    put 'brochures/:id(.:format)' => 'brochures#update', :as => 'update_brochure', :constraints => { :id => %r([^/.?]+) }
    delete 'brochures/:id(.:format)' => 'brochures#destroy', :as => 'destroy_brochure', :constraints => { :id => %r([^/.?]+) }


    # Resource routes for controller "admin/categories"
    get 'categories/new(.:format)', :as => 'new_category'
    get 'categories/:id/edit(.:format)' => 'categories#edit', :as => 'edit_category'
    get 'categories/:id(.:format)' => 'categories#show', :as => 'category', :constraints => { :id => %r([^/.?]+) }
    post 'categories(.:format)' => 'categories#create', :as => 'create_category'
    put 'categories/:id(.:format)' => 'categories#update', :as => 'update_category', :constraints => { :id => %r([^/.?]+) }
    delete 'categories/:id(.:format)' => 'categories#destroy', :as => 'destroy_category', :constraints => { :id => %r([^/.?]+) }

    # Owner routes for controller "admin/categories"
    post 'sites/:site_id/categories(.:format)' => 'categories#create_for_site', :as => 'create_category_for_site'

    # Reorder routes for controller "admin/categories"
    post 'categories/reorder(.:format)', :as => 'reorder_categories'


    # Resource routes for controller "admin/users"
    get 'users(.:format)' => 'users#index', :as => 'users'
    get 'users/new(.:format)', :as => 'new_user'
    get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
    get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
    post 'users(.:format)' => 'users#create', :as => 'create_user'
    put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
    delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }


    # Resource routes for controller "admin/machine_assignments"
    post 'machine_assignments(.:format)' => 'machine_assignments#create', :as => 'create_machine_assignment'
    put 'machine_assignments/:id(.:format)' => 'machine_assignments#update', :as => 'update_machine_assignment', :constraints => { :id => %r([^/.?]+) }
    delete 'machine_assignments/:id(.:format)' => 'machine_assignments#destroy', :as => 'destroy_machine_assignment', :constraints => { :id => %r([^/.?]+) }

    # Reorder routes for controller "admin/machine_assignments"
    post 'machine_assignments/reorder(.:format)', :as => 'reorder_machine_assignments'


    # Resource routes for controller "admin/features"
    get 'features/new(.:format)', :as => 'new_feature'
    post 'features(.:format)' => 'features#create', :as => 'create_feature'
    put 'features/:id(.:format)' => 'features#update', :as => 'update_feature', :constraints => { :id => %r([^/.?]+) }
    delete 'features/:id(.:format)' => 'features#destroy', :as => 'destroy_feature', :constraints => { :id => %r([^/.?]+) }

  end

end

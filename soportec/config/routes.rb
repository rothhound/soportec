Soportec::Application.routes.draw do
  root :to => "laboratories#index"

  devise_for :users
#  devise_for :users, :path_names => { :sign_up => "register" }

  resources :groups

  resources :users do
    collection do
      get 'manage'
    end
  end

  resources :roles do
    collection do
      get 'manage'
    end
  end

  resources :schedules do
  	collection do
      match 'dynamic_new'
  	end
  end

  resources :eaps

  resources :courses do
    collection do
      get 'manage'
      get 'search'
    end
  end

  resources :professors do
    collection do
      get 'manage'
      get 'search'
    end
  end

  resources :categories do
    collection do
      get 'manage'
    end
  end

  resources :softwares do
    collection do
      get 'manage'
      get 'search'
    end
  end

  resources :laboratories do
    collection do
      get 'manage'
      get 'responsibles'
      match 'search'
      match 'find'
    end

    member do
      get 'assignuser'
    end
  end

  resources :computers  do
    collection do
      get 'manage'
    end
  end

  resources :states  do
    collection do
      get 'manage'
      match 'list'
    end
    member do
      get 'change'
    end
  end

  match 'about' => 'main#about', :as => :about
  match 'contact' => 'main#contact', :as => :contact

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
  root :to => 'main#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id))(.:format)'
end

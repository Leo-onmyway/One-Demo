Yiku::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
  
  # The controller will only search the directory under views that has the same name 
  # with it to find the target page, meanwhile if in layouts there is a layout with
  # the same name as controller, the layout will be interpreted first then the page
  # So if match '/temp/' to 'items#blank', page not found will happen during runtime
  match '/yiku/' => 'items#myyiku'
  
  # For Hat
  match '/yiku/hat/showlist/' => 'hats#showlist'
  match '/yiku/hat/new' => 'hats#new'
  match '/yiku/hat/create' => 'hats#create'
  match '/yiku/hat/view&:id' => 'hats#view'
  match '/yiku/hat/edit&:id' => 'hats#edit'
  match '/yiku/hat/update' => 'hats#update'
  match '/yiku/hat/delete&:id' => 'hats#delete'
  
  # For Top
  match '/yiku/top/showlist/' => 'tops#showlist'
  match '/yiku/top/new' => 'tops#new'
  match '/yiku/top/create' => 'tops#create'
  match '/yiku/top/view&:id' => 'tops#view'
  match '/yiku/top/edit&:id' => 'tops#edit'
  match '/yiku/top/update' => 'tops#update'
  match '/yiku/top/delete&:id' => 'tops#delete'
  
  # For Bottom
  match '/yiku/bottom/showlist/' => 'bottoms#showlist'
  match '/yiku/bottom/new' => 'bottoms#new'
  match '/yiku/bottom/create' => 'bottoms#create'
  match '/yiku/bottom/view&:id' => 'bottoms#view'
  match '/yiku/bottom/edit&:id' => 'bottoms#edit'
  match '/yiku/bottom/update' => 'bottoms#update'
  match '/yiku/bottom/delete&:id' => 'bottoms#delete'
  
  # For Shoes
  match '/yiku/shoe/showlist/' => 'shoes#showlist'
  match '/yiku/shoe/new' => 'shoes#new'
  match '/yiku/shoe/create' => 'shoes#create'
  match '/yiku/shoe/view&:id' => 'shoes#view'
  match '/yiku/shoe/edit&:id' => 'shoes#edit'
  match '/yiku/shoe/update' => 'shoes#update'
  match '/yiku/shoe/delete&:id' => 'shoes#delete'
  
  match '/yiku/gallery' => 'styler#gallery'
  
  match '/yiku/suit/compose&:comId' => 'suits#compose'
  match '/yiku/suit/create' => 'suits#create'
  match '/yiku/suit/showlist' => 'items#listsuit'
  
  match '/yiku/temp/' => 'blank#blank'
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
  # match ':controller(/:action(/:id(.:format)))'
end

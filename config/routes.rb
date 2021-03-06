Mana::Application.routes.draw do
  # get "collaborations/new"
  devise_for :users
  #get "users/new"

resources :users, :collaborations

root 'mast_head#home'

  match '/help', to: 'mast_head#help', via: 'get'
  match '/about', to: 'mast_head#about', via: 'get'

  match '/signup', to: 'users#new', via: 'get'
  match '/index', to: 'users#index', via: 'get'

  match '/strategy', to: 'mast_head#strategy', via: 'get'

  match '/agency', to: 'mast_head#agency', via: 'get'

  match '/design', to: 'mast_head#design', via: 'get'

  match '/development', to: 'mast_head#development', via: 'get'

  match '/data', to: 'mast_head#data', via: 'get'

  match '/developing', to: 'mast_head#developing', via: 'get'

  match '/developed', to: 'mast_head#developed', via: 'get'

  match '/social', to: 'mast_head#social', via: 'get'

  match '/urban', to: 'mast_head#urban', via: 'get'

  match '/technology', to: 'mast_head#technology', via: 'get'

  match '/SafeStreets', to: 'mast_head#safestreets', via: 'get'

  match '/safestreets', to: 'mast_head#safestreets', via: 'get'

  match '/Safestreets', to: 'mast_head#safestreets', via: 'get'

  match '/safeStreets', to: 'mast_head#safestreets', via: 'get'

  get 'contact', to: 'mast_head#contact'

  get 'nucleus', to: 'mast_head#nucleus'

  post 'twilio/voice' => 'twilio#voice'





  
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

Rails.application.routes.draw do
  devise_for :admins
  root 'static_pages#home'

  get 'predictions' => 'predictions#index', as: :predictions
  post 'predictions' => 'predictions#create'
  get 'predictions/new/:match_id' => 'predictions#new', as: :new_prediction
  get 'predictions/:id/edit' => 'predictions#edit', as: :edit_prediction
  get 'predictions/:id' => 'predictions#show', as: :prediction
  patch 'predictions/:id' => 'predictions#update'
  put 'predictions/:id' => 'predictions#update'
  delete 'predictions/:id' => 'predictions#destroy'
  put 'update_multiple_predictions' => 'predictions#update_multiple'

  resources :teams
  resource :matches

  devise_for :users
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

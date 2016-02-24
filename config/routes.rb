Rails.application.routes.draw do
  root 'theaters#index'
  get '/theaters' => 'theaters#index'
  get '/theaters/:id' => 'theaters#show', as: :theater
  get '/movies' => 'movies#index'
  get '/movies/:id' => 'movies#show', as: :movie
  get '/showtimes/:id' => 'showtimes#show', as: :showtime

  get '/showtimes/:id/edit' => 'showtimes#edit', as: :edit_showtime
  patch '/showtimes/:id' => 'showtimes#update'
  
  resources :movies
  get '/new' => 'movies#new', as: :add_movie
  post 'movies' => 'movies#create'

  # order and thank you pages.
  get '/thanks' => 'pages#thanks'
  resources :orders
  get '/orders' => 'orders#index'
  get '/orders/new' => 'orders#new'


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

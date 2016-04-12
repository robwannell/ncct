Rails.application.routes.draw do
  
  

  resources :folders

  resources :success_stories

  resources :raffleitems

  resources :raffle

  mount Ckeditor::Engine => '/ckeditor'
  resources :boardmembers

  resources :graduates

  resources :photos
  match 'set_cover', to: 'albums#set_cover', via: 'get'
  resources :albums

  resources :partners

  resources :announcements

  resources :products

  get 'contact/index'

  get 'contact/new'

  get 'contact/create'

  resources :receptions

  resources :bios

  resources :programs

  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  match '/create', to: 'user_sessions#create', via: 'post'
  post 'logout' => 'user_sessions#destroy', :as => :logout
  
  
  resources :contact, only: [:new, :create]
  get '/contact', to: 'contact#new'
  match '/send_mail', to: 'contact#send_mail', via: 'post'
  
 
  get '/admin' => 'admin#index'

  get '/about' => 'pages#about'
  
  get '/team' => 'pages#team'
  
   get '/board' => 'pages#board'

  get '/careers' => 'pages#careers'

  get '/curriculum' => 'pages#curriculum'

  get '/success' => 'pages#success'
  
  get '/enrollment' => 'pages#enrollment'
  
  get '/gallery' => 'pages#gallery'
  
  

   
  
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'

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

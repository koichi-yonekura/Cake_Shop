Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
}

  devise_for :customers, controllers: {
  	sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#top'
  get 'about' => 'homes#about'

  get 'end_users/my_page' => 'end_users#show'
  get 'end_users/edit' => 'end_users#edit'
  patch 'end_users' => 'end_users#update'
  get 'end_users/unsubscribe'
  patch 'end_users/withdrawal'

  resources :items, only: [:index, :show]
  
  resources :cart_items, only: [:create, :index, :update, :destroy]
  delete 'cart_items/destroy_all'

  resources :orders, only: [:new, :create, :index, :show]
  post 'orders/comfirm'
  get 'orders/complete'
  
  resources :deliveries, except: [:new, :show]
  
  namespace :admin do
    get '/admin' => 'homes#top'

    resources :items, except: [:destroy]

  	resources :categories, only: [:index, :create, :edit, :update]

  	resources :end_users, only: [:index, :show, :edit, :update]

    resources :orders, only: [:index, :show, :update]

  	resources :order_details, only: [:update]
  end

end

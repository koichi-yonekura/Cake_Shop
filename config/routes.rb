Rails.application.routes.draw do
  namespace :public do
    get 'deliveries/index'
    get 'deliveries/create'
    get 'deliveries/edit'
    get 'deliveries/update'
    get 'deliveries/destroy'
  end
  namespace :public do
    get 'orders/new'
    get 'orders/create'
    get 'orders/index'
    get 'orders/show'
    get 'orders/comfirm'
    get 'orders/complete'
  end
  namespace :public do
    get 'cart_items/create'
    get 'cart_items/index'
    get 'cart_items/update'
    get 'cart_items/destroy'
    get 'cart_items/destroy_all'
  end
  namespace :public do
    get 'items/index'
    get 'items/show'
  end
  namespace :public do
    get 'end_users/show'
    get 'end_users/edit'
    get 'end_users/update'
    get 'end_users/comfirm'
    get 'end_users/withdrawal'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
  namespace :admin do
    get 'order_details/update'
  end
  namespace :admin do
    get 'end_users/index'
    get 'end_users/show'
    get 'end_users/edit'
    get 'end_users/update'
  end
  namespace :admin do
    get 'categories/index'
    get 'categories/create'
    get 'categories/edit'
    get 'categories/update'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :admin do
    get 'items/new'
    get 'items/create'
    get 'items/index'
    get 'items/show'
    get 'items/edit'
    get 'items/update'
  end
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
  namespace :admin do
    resources :items, only: [:new, :create, :index, :show, :edit, :update]
  end
end

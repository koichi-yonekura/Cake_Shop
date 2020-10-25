Rails.application.routes.draw do
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

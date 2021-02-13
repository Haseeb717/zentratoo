Rails.application.routes.draw do
  
  resources :alerts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'companies' => 'home#companies',as: 'companies'
  get 'company/:id' => 'home#company',as: 'company'
  get 'offers' =>'home#offers',as: 'offers'
  get 'offer/:id' => 'home#offer',as: 'offer'
  devise_for :users
  resources :requests
  get 'terms_of_service' => 'home#terms_of_service',as: 'terms_of_service'
  get 'help' => 'home#help',as: 'help'
  get 'imprint' => 'home#imprint',as: 'imprint'
  get 'data-privacy' => 'home#data_privacy',as: 'data_privacy'
  get 'contact' => 'home#contact',as: 'contact'
  get 'get_categories' => 'home#get_categories',as: 'get_categories'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

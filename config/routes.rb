Rails.application.routes.draw do
  
  resources :alerts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'home/screen2'
  get 'home/screen3'
  get 'home/screen4'
  get 'companies' => 'home#companies',as: 'companies'
  get 'company/:id' => 'home#company',as: 'company'
  get 'home/screen6'
  get 'home/screen7'
  get 'offers' =>'home#offers',as: 'offers'
  get 'offer/:id' => 'home#offer',as: 'offer'
  get 'home/screen9'
  get 'home/screen10'
  get 'home/screen11'
  get 'home/screen12'
  get 'home/screen13'
  get 'home/screen14'
  get 'home/screen15'
  devise_for :users
  resources :requests
  get 'terms_of_service' => 'home#terms_of_service',as: 'terms_of_service'
  get 'help' => 'home#help',as: 'help'
  get 'imprint' => 'home#imprint',as: 'imprint'
  get 'data-privacy' => 'home#data_privacy',as: 'data_privacy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

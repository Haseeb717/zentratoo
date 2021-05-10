Rails.application.routes.draw do
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '(:locale)', :constraints => {:locale => /en|de/} do
    resources :alerts
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
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

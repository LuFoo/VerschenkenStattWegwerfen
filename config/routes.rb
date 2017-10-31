Rails.application.routes.draw do

  resources :vendors
  get 'welcome/index'

	resources :offers
 
  root 'welcome#index'

end

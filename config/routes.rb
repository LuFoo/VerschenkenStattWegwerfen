Rails.application.routes.draw do

  get 'welcome/index'

	resources :offers
 
  root 'welcome#index'

end

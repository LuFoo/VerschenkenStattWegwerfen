Rails.application.routes.draw do

  get 'welcome/index'

	resources :offers, :categories
 
  root 'welcome#index'

end

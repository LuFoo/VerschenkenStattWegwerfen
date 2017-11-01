Rails.application.routes.draw do

  resources :vendors
  get 'welcome/index'

  	resources :categories, :offers

  root 'welcome#index'

end

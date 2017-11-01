Rails.application.routes.draw do

  get 'welcome/index'

  	resources :categories, :offers

  root 'welcome#index'

end

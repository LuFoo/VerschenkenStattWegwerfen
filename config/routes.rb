Rails.application.routes.draw do

  resources :charities
  devise_for :users
  resources :users
  resources :categories, :offers
  resources :vendors
  get 'welcome/index'

    root 'welcome#index'
    get 'offer/index'
    get 'offer/new'
    post 'offer/create'
    patch 'offer/update'
    get 'offer/index'
    get 'offer/show'
    get 'offer/edit'
    get 'offer/destroy'
    get 'offer/update'

    get 'user/index'
    get 'user/new'
    post 'user/create'
    patch 'user/update'
    get 'user/show'
    get 'user/edit'
    get 'user/destroy'
    get 'user/update'

    resources :offers do

          collection do
            get 'search'
          end
        end



end

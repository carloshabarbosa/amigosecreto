Rails.application.routes.draw do
  get 'sort/sort'

  get 'welcome/index'

  post 'sort_realize' => 'sort#realize' 

  root 'sort#sort'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :friends
  
end

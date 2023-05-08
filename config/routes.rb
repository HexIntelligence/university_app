Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "courses#index"
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
  # get 'students', to: 'students#new'
  resources :students, except: [:destroy]
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'
end

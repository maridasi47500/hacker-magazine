Rails.application.routes.draw do
  resources :myotherscripts
  resources :notes
  resources :programminglanguages
  root 'welcome#index'
  resources :mypics do
  end
  resources :myhacks do
    member do
      get "addpic"
      get "addscript"
      get "addmyotherscript"
    end
  end
  resources :myscripts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

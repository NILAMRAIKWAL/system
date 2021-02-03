Rails.application.routes.draw do
  resources :usersses

   get 'home/index'

   root'home#index'

   resources :usersses 

   resources :sessions, only:[:new, :create, :destroy]
 
   get'signup', to:'usersses#new', as:'signup'

   get'login', to:'sessions#new', as:'login'
   
   get'logout', to:'sessions#destroy', as:'logout'

   get'welcome', to:'sessions#welcome', as:'welcome'
   
  # get 'session/welcome'
  # get 'session/new'


   get 'book/delete'
   get 'book/distroy'

   get 'book/update'
   get 'book/edit'

   get 'book/save'
   get 'book/list'

   get 'book/show'
   get 'book/add'

   get 'book/new'
   get 'book/create'

   get 'book/search'
  

  # get 'display/hello'	

   #get 'login/first'
   
  # get'login/session'
   #get'new/session'
   #get'welcome/session'
  #get 'login/welcome' 
   #get 'first/welcome'
   # root'first#welcome'
  # get "/first",to: "first#welcome"


   match ':controller(/:action(/:id(.:format)))',:via => [:get,:post]
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
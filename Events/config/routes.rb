Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/new'

 	root'users#index'
  get 'attendess/index'

  get 'attendess/create'

  post 'attendess/:id'=> 'attendess#create'
  post 'comments/:id'=>'comments#new'
  get 'sessions/index'
  get 'sessions/new'
  delete 'attendess/:id'=>'attendess#destroy'
 post 'sessions'=> 'sessions#create'   
 get 'sessions/new'
  get 'events/index'
  get'events/:id'=> 'events#show'
  get'events/:id'=> 'events#destroy'
  post 'events/create'=> 'events#create'
  get 'events/create'
  get 'users/index'
  get 'users/destroy'=> 'users#destroy'
  get 'users/:id'=> 'users#edit'  
  get 'users/create'
  get 'users/login'
  patch'users/update/:id'=> 'users#update'
  # post 'users/:id'=> 'users#login'
  post 'users/create' => 'users#create'
  get 'users/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

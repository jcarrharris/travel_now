TravelNow::Application.routes.draw do

  resources :reviews, :only => [:show, :new, :edit]
  resources :users, :only => [:new, :create, :index]

  resources :sessions, :only => [:new, :create, :destroy]


  resources :destinations do
    resources :reviews, :except => [:index]
    member do 
      get 'like'
      get 'unlike'

      #resources :likes, :only => [:create, :destroy]
    end
  end


  get "users/new"
  get "users/create"
  #TODO: Fix this!!!
  root :to => "sessions#new"

end

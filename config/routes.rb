TourPlanner::Application.routes.draw do
  root to: 'users#show'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:new, :create, :destroy, :show, :index, :edit, :update]
  
  resources :bands, only: [:create, :destroy, :show, :new, :index, :edit, :update] do
    resources :events, only: [:create, :destroy, :edit, :update]
  end
  
  resources :events, only: [:destroy, :index, :show]
  
  resources :venues, only: [:index, :show]
  
  resources :tours, only: [:show, :destroy]
end

TourPlanner::Application.routes.draw do
  root to: 'users#show'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:new, :create, :destroy, :show, :index]
  
  resources :bands, only: [:create, :destroy, :show, :index] do
    resources :events, only: [:create, :destroy, :show]
  end
  
  resources :events, only: [:destroy, :index]
  
  resources :venues, only: [:index]
end

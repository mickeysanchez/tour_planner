TourPlanner::Application.routes.draw do
  root to: 'users#show'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:new, :create, :destroy, :show]
  
  resources :bands, only: [:create, :destroy, :show] do
    resources :events, only: [:create, :destroy, :show]
  end
  
  resources :events, only: [:destroy]
end

TourPlanner::Application.routes.draw do
  root to: 'users#show'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:new, :create, :destroy, :show, :index, :edit, :update] do
    resources :member_requests, only: [:index]
    put 'change_password', to: 'passwords#update'
  end
  
  resources :bands, only: [:create, :destroy, :show, :new, :index, :edit, :update] do
    resources :events, only: [:create, :destroy, :edit, :update, :new]
    resources :tours, only: [:new, :create, :edit]
    resources :member_requests, only: [:create]
    post 'grab_shows', to: "events#grab_shows", as: "grab_shows"
  end
  
  put "member_requests/:id/deny_request", to: 'member_requests#deny', as: "deny_request"
  put "band_memberships/:id/make_admin", to: 'band_memberships#make_admin', as: "make_admin"
  
  resources :band_memberships, only: [:create]
  
  resources :events, only: [:destroy, :index, :show]
  
  resources :venues, only: [:index, :show]
  
  resources :tours, only: [:show, :destroy, :update]
end

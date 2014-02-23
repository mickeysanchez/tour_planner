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
    resources :events, only: [:create, :destroy, :edit, :update, :new, :index]
    resources :tours, only: [:new, :create, :edit]
    resources :member_requests, only: [:create]
    post 'grab_shows', to: "events#grab_shows", as: "grab_shows"
    put 'grab_image', to: "bands#grab_image", as: "grab_image"
  end
  
  put "member_requests/:id/deny_request", to: 'member_requests#deny', as: "deny_request"
  put "band_memberships/:id/make_admin", to: 'band_memberships#make_admin', as: "make_admin"
  
  post 'search', to: 'bands#search', as: 'band_search'
  
  resources :band_memberships, only: [:create]
  
  resources :events, only: [:destroy, :index, :show]
  
  resources :venues, only: [:index, :show]
  
  resources :tours, only: [:show, :destroy, :update]
  
  namespace :demo do
    get 'one'
    get 'new_band'
    get 'band_page'
    get 'band_image'
  end
end

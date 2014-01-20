TourPlanner::Application.routes.draw do
  root to: 'bands#index'
  
  resources :bands do
    resources :events
  end
  
  resources :events
  resources :venues
end

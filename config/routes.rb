TourPlanner::Application.routes.draw do
  root to: 'bands#index'
  resources :bands
  resources :events
end

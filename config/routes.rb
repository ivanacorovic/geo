Geo::Application.routes.draw do

  resources :locations
  root to: "locations#index"
  resources :companies
end

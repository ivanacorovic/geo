Geo::Application.routes.draw do

  resources :locations
  root to: "locations#index"
  resources :companies
  resources :transactions
  match 'atlas', to: 'locations#show', via: :get

end

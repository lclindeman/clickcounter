Clickcounter::Application.routes.draw do
  resources :counters

  root to:"counters#index"
  
end
Clickcounter::Application.routes.draw do
  resources :counters do
    member do
      get 'increment'
    end
  end

  root to:"counters#index"
  
  
end
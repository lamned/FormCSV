FormCSV::Application.routes.draw do
  resources :questionaires


  root to: 'questionaires#index'
end

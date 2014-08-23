RailsBootstrap::Application.routes.draw do
  resources :measurements

  resources :pregnancies

  resources :period_milk_productions

  resources :livestocks

  root :to => 'visitors#new'
end

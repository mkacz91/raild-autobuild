WebStatus::Application.routes.draw do
  resources :builds
  root 'status#index'
end

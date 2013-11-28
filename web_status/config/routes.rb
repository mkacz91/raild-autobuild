WebStatus::Application.routes.draw do
  resources :builds
  
  root 'status#index'

  post 'status/build_now', to: 'status#build_now'
end

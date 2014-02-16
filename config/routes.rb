Photo::Application.routes.draw do
  resources :images

  resources :albums

  resources :pictures
  
end

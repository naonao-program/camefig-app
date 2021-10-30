Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'homes#top'
  get 'upload', to: 'homes#upload'
  resources :photos
  resources :videos
end

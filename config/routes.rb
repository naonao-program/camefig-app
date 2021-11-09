Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'upload', to: 'homes#upload'
  resources :photos
  resources :posts
  resources :videos
end

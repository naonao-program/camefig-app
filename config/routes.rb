Rails.application.routes.draw do
  resources :videos
  devise_for :users
  root to: 'homes#top'
  get 'upload', to: 'homes#upload'
  resources :photos
end

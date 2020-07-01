Rails.application.routes.draw do
  get 'sessions/new'
  root 'blogs#top'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :blogs do
    collection do
      post :confirm
    end
  end
end

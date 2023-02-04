Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/show'
  get 'search' => 'posts#sear'
  devise_for :users
  root to: 'homes#top'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end

  resources :users, only: [:index, :show, :edit, :update, :destroy]
end
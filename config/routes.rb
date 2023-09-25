Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  get 'tweets/:tweet_id/likes' => 'likes#create'
 get 'tweets/:tweet_id/likes/:id' => 'likes#destroy'
 resources :users, only: [:show]
 resources :tweets do
    resources :likes, only: [:create, :destroy]
  end





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

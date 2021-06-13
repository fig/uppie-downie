Rails.application.routes.draw do
  get 'downvotes/create'
  get 'upvotes/create'
  devise_for :users

  resources :posts do
    member do
      post "upvote", to: "upvotes#create"
      post "downvote", to: "downvotes#create"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "posts#index"
end

Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  resources :questions, only: [:index, :new, :create, :show]
  resources :questions do
    resources :comments, only: [:index, :create]
  end
end

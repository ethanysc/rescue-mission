Rails.application.routes.draw do
  root 'questions#index'
  devise_for :users

  resources :questions, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :answers, only: [:new, :create, :update, :edit]
  end

  resources :answers, only: [:update]
end

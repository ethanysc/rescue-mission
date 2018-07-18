Rails.application.routes.draw do
  root 'questions#index'
  devise_for :users

  resources :questions, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :answers, only: [:new, :create, :update]
  end

end

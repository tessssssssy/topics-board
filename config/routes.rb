Rails.application.routes.draw do
  devise_for :users
  resources :topics do
    resources :votes, only: [:create]
  end
  root to: "topics#index"
  put '/', to: 'votes#update', as: "vote"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

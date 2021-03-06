Rails.application.routes.draw do
  get 'restaurants/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[index new create show]
  resources :restaurants do
    resources :reviews, only: %i[index new create]
  end
  resources :reviews, only: %i[show]
end

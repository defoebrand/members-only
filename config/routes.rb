Rails.application.routes.draw do
  devise_for :models
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :posts # , only: %i[new create index] TODO: uncomment later
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
end

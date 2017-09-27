Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "web/pages#index"

  namespace :api do
    namespace :v1 do
      resources :products
    end
  end

  namespace :web do
    resources :pages
  end
end

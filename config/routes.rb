Rails.application.routes.draw do
  get 'hotels/index'
  devise_for :users
  root to: "hotels#index"
  resources :plans, only: []
end

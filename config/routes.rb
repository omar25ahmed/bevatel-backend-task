Rails.application.routes.draw do
  devise_for :users
  resources :students
  resources :schools
  root "schools#index"
  namespace :api do
    namespace :v1 do
      resources :students
    end
  end
end

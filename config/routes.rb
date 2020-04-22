Rails.application.routes.draw do
  root to: 'api/v1/root#index'
  get 'api/v1', to: 'api/v1/root#index'

  namespace :api do
    namespace :v1 do
      resources :tasks
    end
  end
end

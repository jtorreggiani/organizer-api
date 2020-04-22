Rails.application.routes.draw do
  root to: 'api/v1/root#index'
  get 'api/v1', to: 'api/v1/root#index'
end

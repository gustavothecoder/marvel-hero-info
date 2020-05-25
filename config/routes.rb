Rails.application.routes.draw do
  root 'hero#index'
  get 'hero/search'
  get 'hero/show'
end
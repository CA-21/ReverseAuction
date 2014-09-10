ReverseAuction::Application.routes.draw do
  get "static_pages/index"
  root 'static_pages#index'
end

ReverseAuction::Application.routes.draw do

  root 'static_pages#index'

  resources :questions do
    resources :answers
  end

  match '/help',      to: 'static_pages#help',      via: 'get'
  match '/about',     to: 'static_pages#about',     via: 'get'
  match '/contact',   to: 'static_pages#contact',   via: 'get'

end

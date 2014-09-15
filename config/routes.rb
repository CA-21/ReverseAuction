ReverseAuction::Application.routes.draw do

  devise_for :lawyers
  root 'static_pages#index'

  resources :questions
  resources :answers
  resources :lawyers, only: [:index, :show]

  match '/answers/new/:question_id', to: 'answers#new', via: 'get'

  match '/help',      to: 'static_pages#help',      via: 'get'
  match '/about',     to: 'static_pages#about',     via: 'get'
  match '/contact',   to: 'static_pages#contact',   via: 'get'

end

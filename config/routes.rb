Rails.application.routes.draw do

  scope module: 'site' do
    resources :articles, :comments
    get '/p/:alias', to: 'pages#show'
  end

  namespace :admin do
    get '/', to: 'mains#show'
    get 'login', to: 'sessions#new'
    delete 'logout' => 'sessions#destroy'
    resources :sessions, only: [:create]
    resources :companies, :jobs, :bosses, :pages
    resources :enterprises
    resources :bosses
    resources :headhunters
    resources :organization_categories
  end
end

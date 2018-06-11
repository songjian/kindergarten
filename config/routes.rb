Rails.application.routes.draw do

  scope module: 'site' do
    root 'mains#show'
    resources :jobs
    resource :group_chat
    resources :products, only: [:index, :show]
    resources :demands, only: [:new, :create, :show]
    resources :developments, only: [:index, :show]
    get '/p/:alias', to: 'pages#show'
  end

  namespace :admin do
    get '/', to: 'mains#show'
    get 'login', to: 'sessions#new'
    delete 'logout' => 'sessions#destroy'
    resources :sessions, only: [:create]
    resources :companies, :jobs, :bosses, :pages, :articles, :article_categories, :products
    resources :feedbacks do
      patch :switch, on: :member
    end
    resources :demands do
      patch :switch, on: :member
    end
    resources :enterprises
    resources :bosses
    resources :headhunters
    resources :organization_categories
  end
end

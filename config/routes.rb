Rails.application.routes.draw do

  scope module: 'site' do
    root 'mains#show'
    get '/p/:alias', to: 'pages#show'
    resource :enroll, only: [:show, :new, :create]
    resources :articles
  end

  namespace :admin do
    get '/', to: 'mains#show'
    get 'login', to: 'sessions#new'
    delete 'logout' => 'sessions#destroy'
    resources :sessions, only: [:create]
    resources :pages, :articles, :article_categories, :foods, :food_categories, :announcements
    resources :enrolls
    resources :enroll_batches do
      patch :switch, on: :member
    end
    resources :administrators
  end
end

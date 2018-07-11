Rails.application.routes.draw do

  scope module: 'site' do
    root 'mains#show'
    resources :jobs
    resource :group_chat
    resources :developments, only: [:index, :show]
    get '/p/:alias', to: 'pages#show'
  end

  namespace :admin do
    get '/', to: 'mains#show'
    get 'login', to: 'sessions#new'
    delete 'logout' => 'sessions#destroy'
    resources :sessions, only: [:create]
    resources :jobs, :bosses, :pages, :articles, :article_categories
    resources :enrolls
    resources :enroll_batches do
      patch :switch, on: :member
    end
    resources :users
    resources :user_positions
    resources :feedbacks do
      patch :switch, on: :member
    end
  end
end

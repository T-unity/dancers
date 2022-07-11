Rails.application.routes.draw do
  # namespace :public do
  #   get 'users/new'
  # end
  # namespace :public do
    # get 'tops#about'
  # end
  root 'public/tops#top'
  # 以下2つは同義
  # get '/about', to: 'public/tops#about'
  get :about, to: 'public/tops#about', as: 'about'

  # ユーザー登録
  get  :signup, to: 'public/users#new',  as: 'signup'
  post :signup, to: 'public/users#create'

  # ユーザー
  scope module: :public do
    # resources :users, except: :new
    resources :users, except: [:new, :create]
    # resources :users
  end

  # セッション管理
  get    :login,  to: 'sessions#new'
  post   :login,  to: 'sessions#create'
  delete :logout, to: 'sessions#destroy'

end

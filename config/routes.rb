Rails.application.routes.draw do
  root 'public/tops#top'
  get :about, to: 'public/tops#about', as: 'about'

  # ユーザー登録
  get  :signup, to: 'public/users#new',  as: 'signup'
  post :signup, to: 'public/users#create'

  scope module: :public do
    # ユーザー
    resources :users, except: [:new, :create]
  end

  # セッション管理
  get    :login,  to: 'sessions#new'
  post   :login,  to: 'sessions#create'
  delete :logout, to: 'sessions#destroy'

end

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
  get :about,  to: 'public/tops#about', as: 'about'

  # ユーザー登録
  get :signup, to: 'public/users#new',  as: 'signup'

end

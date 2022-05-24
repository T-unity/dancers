Rails.application.routes.draw do
  get 'top/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'public/top#index'

  # トップコントローラー。静的なコンテンツのみ。
  get :about, to: 'public/top#about', as: 'about'
  get :test,  to: 'public/top#test',  as: 'test'

  resources :posts
end

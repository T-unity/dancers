Rails.application.routes.draw do
  # namespace :public do
    # get 'tops#about'
  # end
  root 'public/tops#top'
  get :about, to: 'public/tops#about'

end

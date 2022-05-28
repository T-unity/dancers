Rails.application.routes.draw do
  namespace :public do
    # get 'tops/top'
  end
  root 'public/tops#top'
end

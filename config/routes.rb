Rails.application.routes.draw do

  resources :articles  

  root controller: :articles, action: :index


end

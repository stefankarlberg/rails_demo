Rails.application.routes.draw do
  
  get root_path controller: :articles, action: :index

  get 'articles/new'
  root controller: :articles, action: :new

end

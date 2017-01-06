Rails.application.routes.draw do
  get 'test/index'
  root 'maypole#landingpage'
  get '/snippets', :to => 'maypole#index'
  get '/subpage', :to => 'maypole#subpage'
  post '/subpage', :to => 'maypole#create'
end


 
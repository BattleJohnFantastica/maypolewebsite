Rails.application.routes.draw do
  resources :maypole do
    resources :page
  end
  get 'test/index'
  root 'maypole#landingpage'
  get '/snippets', :to => 'maypole#index'
  get '/subpage', :to => 'maypole#subpage'
  post '/subpage', :to => 'maypole#create'
  get '/new', :to => 'maypole#new'
  get '/p', :to => 'maypole#autopage'
  get '/v', :to => 'maypole#autopage_video'
end


 
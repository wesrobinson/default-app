Rails.application.routes.draw do
  root to: 'public#home'

  get '/contact_me', to: 'public#contact'
  get '/about_me', to: 'public#about'
  get '/podcast', to: 'public#podcast'
  get '/blog', to: 'public#blog'
  get '/dashboard', to: 'pages#dashboard'
  post '/leads', to: 'leads#create'
  get '/leads', to: 'leads#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

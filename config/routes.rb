Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/newsletter/signup', to: 'user#newsletter'
  get '/contact/message/', to: 'user#contact_message'

  resources :charges

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end

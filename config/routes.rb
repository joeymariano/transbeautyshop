Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#index"
  get '/about', to: 'information#about'
  get '/contact', to: 'information#contact'
  get '/faqs', to: 'information#faqs'
  get '/services', to: 'information#services'

  post '/email', to: 'email#create'

  post '/create-session', to: 'sessions#create'
  get '/login', to: 'sessions#login'
  get '/logout', to: 'sessions#logout'


 	resources :users, only: [:show] do
 		resources :posts, only: [:create, :edit, :update, :destroy]
 	end
end

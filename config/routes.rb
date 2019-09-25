Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#index"
  get '/about', to: 'information#about'
  get '/contact', to: 'information#contact'
  get '/faqs', to: 'information#faqs'
  get '/services', to: 'information#services'

  post '/email', to: 'email#create'

 	resources :users, only: [:show, :create, :edit, :delete] do
 		resources :posts, only: [:index, :show, :create, :edit, :delete]
 	end
end

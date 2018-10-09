Rails.application.routes.draw do
  
  namespace :admin do
	  get 'dashboard/main'
	  get 'dashboard/user'
	  get 'dashboard/blog'
  end

  get 'about', to: 'pages#about'

  get 'some/long/url', to: 'pages#contact', as: 'lead'
# Below the resources :post is an example of Globbing
# Globbing is a type of catch all for links that are missing or missed typed in the address bar
# localhost:3000/posts/asdf/asdf
# will send you to the missing view.
  resources :blogs  
  resources :posts
  get 'posts/*missing', to: 'posts#missing'

# The query/:else is a type of Custom and Dynamic rout. 
# it will take what ever is after the the word query in the address bar and dipaly it on the screen.
# localhost:3000/query/xxxx/xxxx

  get 'query/:else/:another_one', to: 'pages#something'
  get 'query/:else', to: 'pages#something'

  root to: 'pages#home'
end

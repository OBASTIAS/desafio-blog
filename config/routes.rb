Rails.application.routes.draw do
  get 'posts/index'
  post 'posts/create', to: "posts#create", as: "post_create"
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end 

Rails.application.routes.draw do
  
 
  get  'likes/toggleC/:comments_id' , to: 'likes#toggleC',as: :toggleC_like
  post 'likes/toggle/:post_id', to: 'likes#toggle' , as: :toggle_like

  post 'comments/create',as: :comments

  delete 'comments/:id',to: 'comments#destroy', as: :destroy_comment

  root 'posts#home'

  post 'posts/create', as: :posts

get 'posts/new', to: 'posts#new'

  delete 'posts/:id',to: "posts#destroy" ,as: :destroy_post

  devise_for :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get '/posts/new' => 'posts#new' , as: 'new_post'
  post '/posts' => 'posts#create'
  get '/posts/:id' => 'posts#show' , as: 'post'
  get '/posts/:id/edit' => 'posts#edit' , as: 'edit_post'
  patch '/posts/:id' => 'posts#update'
  delete '/posts/:id' => 'posts#destroy'

  get '/comments' => 'comments#index', as: 'comments'
  get '/comments/new' => 'comments#new', as: 'new_comment'
  post '/comments' => 'comments#create'
  get '/comments/:id' => 'comments#show' , as: 'comment'
  get '/comments/:id/edit' => 'comments#edit', as: 'edit_comment'
  patch '/comments/:id' => 'comments#update'
  delete '/comments/:id' => 'comments#destroy'


  get '/posts/:post_id/comments' => 'comments#index', as: 'post_comment'
  get '/posts/:post_id/comments/new' => 'comments#create', as: 'new_post_comment'
  post '/posts/:post_id/comments' => 'comments#create'

end

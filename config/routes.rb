# == Route Map
#
#                   Prefix Verb   URI Pattern                         Controller#Action
#               list_blogs GET    /blogs/list(.:format)               blogs#list
#        shared_blog_blogs GET    /blogs/shared_blog(.:format)        blogs#shared_blog
#               share_blog GET    /blogs/:id/share(.:format)          blogs#share
#                          POST   /blogs/:id/share(.:format)          blogs#share
#                    blogs GET    /blogs(.:format)                    blogs#index
#                          POST   /blogs(.:format)                    blogs#create
#                 new_blog GET    /blogs/new(.:format)                blogs#new
#                edit_blog GET    /blogs/:id/edit(.:format)           blogs#edit
#                     blog GET    /blogs/:id(.:format)                blogs#show
#                          PATCH  /blogs/:id(.:format)                blogs#update
#                          PUT    /blogs/:id(.:format)                blogs#update
#                          DELETE /blogs/:id(.:format)                blogs#destroy
#                     root GET    /                                   visitors#index
#         new_user_session GET    /login(.:format)                    users/sessions#new
#             user_session POST   /login(.:format)                    users/sessions#create
#     destroy_user_session DELETE /signout(.:format)                  users/sessions#destroy
#            user_password POST   /forgot(.:format)                   devise/passwords#create
#        new_user_password GET    /forgot/new(.:format)               devise/passwords#new
#       edit_user_password GET    /forgot/edit(.:format)              devise/passwords#edit
#                          PATCH  /forgot(.:format)                   devise/passwords#update
#                          PUT    /forgot(.:format)                   devise/passwords#update
# cancel_user_registration GET    /cancel(.:format)                   users/registrations#cancel
#        user_registration POST   /                                   users/registrations#create
#    new_user_registration GET    /register(.:format)                 users/registrations#new
#   edit_user_registration GET    /settings(.:format)                 users/registrations#edit
#                          PATCH  /                                   users/registrations#update
#                          PUT    /                                   users/registrations#update
#                          DELETE /                                   users/registrations#destroy
#             profile_user GET    /users/:id/profile(.:format)        users#profile
#      friend_request_user GET    /users/:id/friend_request(.:format) users#friend_request
#      accept_request_user GET    /users/:id/accept_request(.:format) users#accept_request
#                    users GET    /users(.:format)                    users#index
#                          POST   /users(.:format)                    users#create
#                 new_user GET    /users/new(.:format)                users#new
#                edit_user GET    /users/:id/edit(.:format)           users#edit
#                     user GET    /users/:id(.:format)                users#show
#                          PATCH  /users/:id(.:format)                users#update
#                          PUT    /users/:id(.:format)                users#update
#                          DELETE /users/:id(.:format)                users#destroy
#

Rails.application.routes.draw do
  resources :blogs do
  	collection do
  		get 'list'
      get 'shared_blog'
  	end
    member do
      get 'share'
      post 'share'
    end
  end


  root to: 'visitors#index'
  devise_for :users, path: "", controllers: {registrations: "users/registrations", sessions: "users/sessions" }, path_names: { sign_in: 'login', password: 'forgot', sign_up: 'register', sign_out: 'signout', edit: 'settings'}
  resources :users do
    member do
      get 'profile'
      get 'friend_request'
      get 'accept_request'
    end
  end
end

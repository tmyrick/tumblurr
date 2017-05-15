rails new -d postgresql tumblurr
bundle
rake db:create
rake db:migrate
rails s -p 4040
rails g controller posts

Add 
    `def index`
    `end`

to index.html file of posts. 

Now go to routes.rb and add
`resources :posts`

and

`root 'post#index` 

Now run `rake routes` to see what that just did - created routes for each view

```Running via Spring preloader in process 58150
   Prefix Verb   URI Pattern               Controller#Action
    posts GET    /posts(.:format)          posts#index
          POST   /posts(.:format)          posts#create
 new_post GET    /posts/new(.:format)      posts#new
edit_post GET    /posts/:id/edit(.:format) posts#edit
     post GET    /posts/:id(.:format)      posts#show
          PATCH  /posts/:id(.:format)      posts#update
          PUT    /posts/:id(.:format)      posts#update
          DELETE /posts/:id(.:format)      posts#destroy
```


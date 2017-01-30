Rails.application.routes.draw do
  get '/' => 'pages#welcome'
  get '/welcome' => 'pages#welcome'
  get '/about' => 'pages#about'
  get '/contest' => 'pages#contest'

  # Allow the user to specify what size of image they would like by defining a dynamic route.

  # Route helper prefix by adding an as option when we define the routes. For example, add the route helpers kitten_path and kitten_url
  get '/kitten/:size' => 'pages#kitten', as: 'kitten'
  get '/kittens/:size' => 'pages#kittens', as: 'kittens'

  # Conditional Redirects, redirect our user away from a page only if they aren't authorized to see it
  get '/secrets/:magic_word' => 'pages#secrets', as: 'secrets'
end

Rails.application.routes.draw do
  get '/' => 'pages#welcome'
  get '/welcome' => 'pages#welcome'
  get '/about' => 'pages#about'
  get '/contest' => 'pages#contest'

  # Allow the user to specify what size of image they would like by defining a dynamic route.
  get '/kitten/:size' => 'pages#kitten'
  get '/kittens/:size' => 'pages#kittens'

  # Conditional Redirects, redirect our user away from a page only if they aren't authorized to see it
  get '/secrets/:magic_word' => 'pages#secrets'
end

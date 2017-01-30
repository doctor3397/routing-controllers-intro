Rails.application.routes.draw do
  get '/' => 'pages#welcome'
  get '/welcome' => 'pages#welcome'
  get '/about' => 'pages#about'
  get '/contest' => 'pages#contest'

  # Allow the user to specify what size of image they would like by defining a dynamic route.
  get '/kitten/:size' => 'pages#kitten'
  get '/kittens/:size' => 'pages#kittens'
end

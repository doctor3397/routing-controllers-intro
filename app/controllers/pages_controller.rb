class PagesController < ApplicationController
  # tell Rails that if it's going to run either kitten or kittens, it needs to run set_kitten_url first. Now we don't have to explicitly call set_kitten_url inside either method.
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
     @header = "This is the header defiend in the welcome method rendered by the application.html.erb"
  end

  def about
    @header = "This is the header defiend in the about method rendered by the application.html.erb"
  end

  def contest
    @header = "This is the header defiend in the contest method rendered by the application.html.erb"
  end

  def kitten
    @header = "This is the header defiend in the kitten method rendered by the application.html.erb"
    #set_kitten_url
  end

  def kittens
    @header = "This is the header defiend in the kittens method rendered by the application.html.erb"
    #set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
end

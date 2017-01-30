class PagesController < ApplicationController
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
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
end

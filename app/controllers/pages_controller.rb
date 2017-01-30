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
end

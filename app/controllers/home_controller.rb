class HomeController < ApplicationController
  def index
    @schools = School.all
    @events = LifeEvent.all
    @peoples = People.all
  end
end

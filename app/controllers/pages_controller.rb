class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home event_types]

  def home
    @reviews = Review.all
    @estimations = Estimation.all
    @events = Event.all
  end

  def event_types

  end
end


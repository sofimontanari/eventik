class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home event_types]

  def home
    @reviews = Review.all
    @estimations = Estimation.all
    @events = Event.all
    @user1 = User.find_by(business_name: "Project Lio Park")
    @user2 = User.find_by(business_name: "CasaEma Photo")
    @user3 = User.find_by(business_name: "Dashing Drink")
  end

  def event_types

  end
end

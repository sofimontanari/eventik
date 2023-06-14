class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home event_types]

  def home
  end

  def event_types

  end
end

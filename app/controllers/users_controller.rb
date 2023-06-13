class UsersController < ApplicationController
  def index
    @users = User.where(supplier: true)
  end
end

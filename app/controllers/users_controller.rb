class UsersController < ApplicationController
  before_action :set_supplier, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[show index]
  def index
    @users = User.where(supplier: true)
  end

  def show
  end

  private

  def set_supplier
    @user = User.find(params[:id])
  end
end

class UsersController < ApplicationController
  before_action :set_supplier, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[show index]

  def index

    if params[:event]
      @event = Event.find(params[:event])
      @name = @event.event_type.name
      @suppliers = []
      User.where(supplier: true).each do |supplier|
        supplier.event_types.each do |event_type|
          if event_type.name == @name
            @suppliers.push(supplier)
          end
        end
      end

    else
      @suppliers = User.where(supplier: true)
    end
  end

  def show
    @event = Event.find(params[:event])
    @estimation = Estimation.new
  end

  private

  def set_supplier
    @supplier = User.find(params[:id])
  end
end

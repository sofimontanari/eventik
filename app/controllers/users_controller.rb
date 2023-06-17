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
      if params[:query].present?
        @suppliers = User.where("business_name ILIKE :query AND supplier = :supplier", query: "%#{params[:query]}%", supplier: true)
      else
        @suppliers = User.where(supplier: true)
      end
    end
  end

  def show
    if params[:event]
      @event = Event.find(params[:event])
      @estimation = Estimation.new

    end
  end

  private

  def set_supplier
    @supplier = User.find(params[:id])
  end
end

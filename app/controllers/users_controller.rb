class UsersController < ApplicationController
  before_action :set_supplier, only: %i[show ]
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

    @users = User.all
    @suppliers = User.where(supplier: true)
    @markers = @suppliers.geocoded.map do |sup|
      {
        lat: sup.latitude,
        lng: sup.longitude,
        info_window: render_to_string(partial: "info_window", locals: {data: sup})

      }
    end


    @user = User.find(params[:id])
    #@comments = Review.joins(:estimation).where(estimations: { user_id: @user.id }).pluck(:comment, :rating)
    @reviews = Review.joins(:estimation).where(estimations: { user_id: @user.id })
    @suma_rating = 0
    @reviews.each do |review|
    @suma_rating += review.rating
    end
    @total_reviews = @reviews.size
    if @total_reviews != 0
      @promedio = (@suma_rating / @total_reviews).ceil
      else
      @promedio = "Este proveedor aún no tiene comentarios"
    end




    @estimations = Estimation.all
    @events = Event.all

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

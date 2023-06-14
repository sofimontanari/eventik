class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new]

  def index

  end

  def new
    @event_type_id = EventType.find_by(name: params[:event_type]).id
    @event = Event.new
  end

  def create
    @event = Event.new(set_event_params)
    @event.user = current_user
    @event.status = 'En proceso'
    @event.event_type_id = params[:event][:event_type_id].to_i

    if @event.save
      redirect_to root_path, notice: "Creaste tu evento, ahora podés buscar servicios"
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def set_event_params
    params.require(:event).permit(:name, :date, :address)
    # agregar fotos
  end
end

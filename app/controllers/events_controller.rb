class EventsController < ApplicationController

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
      redirect_to users_path(event: @event), notice: "Creaste tu evento, ahora podés buscar servicios"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.name = params["event"]["name"]
    if @event.save
      redirect_to events_path, notice: "Cambiaste el nombre del evento"
    else
      render :edit, status: :unprocessable_entity
    end
  end


  private

  def set_event_params
    params.require(:event).permit(:name, :date, :address)
    # agregar fotos
  end
end

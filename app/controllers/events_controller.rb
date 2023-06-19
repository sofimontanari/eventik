class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
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
  end

  def edit
  end

  def update
    @event.name = params["event"]["name"]
    if @event.save
      redirect_to events_path, notice: "Cambiaste el nombre del evento"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def set_event_params
    params.require(:event).permit(:name, :date, :address)
    # agregar fotos
  end
end

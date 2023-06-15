class EstimationsController < ApplicationController
  before_action :set_estimation, only: %i[edit update accept negotiate cancel]

  def index
    @estimations = Estimation.where(user: current_user)
  end

  def create
    @estimation = Estimation.new(set_estimation_params)
    @estimation.event_id = params["event_id"]
    @estimation.user_id = params["estimation"]["user_id"].to_i
    @estimation.status = "Pendiente"

    if @estimation.save
      redirect_to event_path(@estimation.event), notice: "Tu cotización fue enviada."
      # redirect_to users_path(params["event"]), notice: "Tu cotización fue enviada."
    else
      redirect_to user_path(params["event_id"]), status: :unprocessable_entity, alert: "Para cotizar tenés que completar todos los datos."
    end
  end

  def edit

  end

  def update
    @estimation.price = params["estimation"]["price"]
    @estimation.status = 'Cotizada por Proveedor'

    if @estimation.save
      redirect_to estimations_path, notice: "Tu Respuesta fue enviada al Cliente"
    else
      render :edit, status: :unprocessable_entity
    end

  end

  def accept
    @estimation.status = 'Aceptada'
    @estimation.save
    redirect_to event_path(@estimation.event)
  end

  def negotiate
    @estimation.status = 'En Negociación'
    @estimation.save
    redirect_to event_path(@estimation.event)
  end

  def cancel
    @estimation.status = 'Suspendida'
    @estimation.save
    redirect_to event_path(@estimation.event)
  end

  private

  def set_estimation
    @estimation = Estimation.find(params[:id])
  end

  def set_estimation_params
    params.require(:estimation).permit(:delivery_date, :comments)
  end
end

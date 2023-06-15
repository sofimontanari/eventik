class EstimationsController < ApplicationController
  before_action :set_estimation, only: %i[edit update ]
  def index
    @estimations = Estimation.where(user: current_user)
  end

  def create
    @estimation = Estimation.new(set_estimation_params)
    @estimation.event_id = params["event_id"]
    @estimation.user_id = params["estimation"]["user_id"].to_i
    @estimation.status = "Pendiente"

    if @estimation.save
      redirect_to estimations_path(event: @estimation.event_id), notice: "Tu cotización fue enviada."
      # redirect_to users_path(params["event"]), notice: "Tu cotización fue enviada."
    else
      redirect_to user_path(params["event_id"]), status: :unprocessable_entity, alert: "Para cotizar tenés que completar todos los datos."
    end
  end

  def edit

  end

  def update
    @estimation.price = params["estimation"]["price"]
    @estimation.status = 'En Negociación'

    if @estimation.save
      redirect_to estimations_path, notice: "Tu Respuesta fue enviada al Cliente"
    else
      render :edit, status: :unprocessable_entity
    end
  
  end

  private

  def set_estimation
    @estimation = Estimation.find(params[:id])
  end

  def set_estimation_params
    params.require(:estimation).permit(:delivery_date, :comments)
  end
end

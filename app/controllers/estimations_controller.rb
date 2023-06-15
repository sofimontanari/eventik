class EstimationsController < ApplicationController
  def create
    @estimation = Estimation.new(set_estimation_params)
    @estimation.event_id = params["event_id"]
    @estimation.user_id = params["estimation"]["user_id"].to_i
    @estimation.status = "Pendiente"

    if @estimation.save
      redirect_to users_path(params["event"]), notice: "Tu cotización fue enviada."
    else
      redirect_to user_path(params["id"]), status: :unprocessable_entity
    end
  end

  private

  def set_estimation_params
    params.require(:estimation).permit(:delivery_date, :comments)
  end
end

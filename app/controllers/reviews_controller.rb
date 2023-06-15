class ReviewsController < ApplicationController
before_action :set_estimation, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(set_review_params)
    @review.estimation_id = params["estimation_id"]
    if @review.save
      @event = Estimation.find(params["estimation_id"]).event_id
      redirect_to event_path(@event), notice: "Creaste tu Review con éxito."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_estimation
    @estimation = Estimation.find(params[:estimation_id])
  end

  def set_review_params
    params.require(:review).permit(:rating, :comment)
  end
end

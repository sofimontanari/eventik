class ChatroomsController < ApplicationController

  def create
    @estimation = Estimation.find(params["estimation_id"])
    @chatroom = Chatroom.new(name: "Hablemos...")
    @estimation.chatroom = @chatroom
    @event = Event.find_by(params["id"])

    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      redirect_to event_estimations_path(@event), status: :unprocessable_entity
    end
  end

  def show
    @chatroom = Chatroom.find(params["id"])
    @message = Message.new
  end

end

class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :create]

  def create
      @chatroom = Chatroom.find(params[:chatroom_id])
      @message = Message.new(message_params)
      @message.chatroom = @chatroom
      @message.user = current_user
      @message.save
      authorize @message
      redirect_to chatroom_path(@chatroom.id)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end

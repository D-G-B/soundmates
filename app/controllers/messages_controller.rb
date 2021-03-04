class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :create]

  def create
      @chatroom = Chatroom.find(params[:chatroom_id])
      @message = Message.new(message_params)
      @message.user = current_user
      @message.chatroom = @chatroom
      @message.save
      authorize @message

      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: { message: @message })
)

      # redirect_to chatroom_path(@chatroom.id)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end

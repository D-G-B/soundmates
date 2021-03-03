class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    @chatrooms = @chatrooms.where(user: current_user, status: true)
  end

  def show
    # @chatrooms = Chatroom.all
    # @chatrooms = @chatrooms.where(user: current_user, status: true)
    @chatroom = Chatroom.find(params[:id])
    # @user = current_user
    # @message = Message.new
    authorize @chatroom
  end

  def create
    @chatroom = Chatroom.new
  end

  private

  def approve

  end

end

##when createing chatroom controller talk to ANDRE!
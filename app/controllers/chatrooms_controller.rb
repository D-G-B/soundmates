class ChatroomsController < ApplicationController

  def index
    @user = current_user
    @chatrooms = Chatroom.all
    @chatrooms = policy_scope(Chatroom).order(created_at: :desc).where(user_id: @user)
    # @chatrooms = @chatrooms.where(user: @user, status: true)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @user = current_user
    @chatrooms = policy_scope(Chatroom).order(created_at: :desc).where(user_id: @user)
    @message = Message.new
    authorize @chatroom
    # @chatrooms = Chatroom.all
    # @chatrooms = @chatrooms.where(user: current_user, status: true)
  end

  def create
    @chatroom = Chatroom.new
  end

  private

  def approve

  end

end

##when createing chatroom controller talk to ANDRE!

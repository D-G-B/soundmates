class ChatroomsController < ApplicationController

  def index
    @user = current_user
    # @userchats = UserChat.all
    @userchats = policy_scope(UserChat).order(created_at: :desc).where(user_id: @user)
    # @userchats = UserChat.all.select { |userchat| userchat.user_id == @user  }
    # @chatrooms = @chatrooms.where(user: @user, status: true)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @messages = @chatroom.messages
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

class ChatroomsController < ApplicationController

  def index

    @chatrooms = policy_scope(Chatroom).order(created_at: :desc)
    @user_chats = UserChat.where(user: current_user)
    # raise
    # # @userchats = UserChat.all
    # @userchats = policy_scope(UserChat).order(created_at: :desc).where(user_id: @user)
    # @userchats = UserChat.all.select { |userchat| userchat.user_id == @user  }
    # @chatrooms = @chatrooms.where(user: @user, status: true)
  end

  def show
    @chatrooms = policy_scope(Chatroom).order(created_at: :desc)
    @user_chats = UserChat.where(user: current_user)
    @chatroom = Chatroom.find(params[:id])
    @messages = @chatroom.messages
    @message = Message.new

    authorize @chatroom
    # @chatrooms = Chatroom.all
    # @chatrooms = @chatrooms.where(user: current_user, status: true)
  end

  def create
    @chatroom = Chatroom.create
    @user = User.find_by_username(params[:user_username])

    resquesor = UserChat.create(chatroom: @chatroom, user: current_user, requestor: true)
    reciever = UserChat.create(chatroom: @chatroom, user: @user, requestor: false)

    # current_user.chatrooms << @chatroom
    # @user.chatrooms << @chatroom

    redirect_to user_path(@user.username)
    authorize @chatroom
  end

  def accept
    @chatroom = Chatroom.find(params[:id])
    @chatroom.status = true
    @chatroom.save
    redirect_to chatrooms_path
    authorize @chatroom
  end

  def deny
    @chatroom = Chatroom.find(params[:id])
    @chatroom.status = false
    @chatroom.save
    redirect_to chatrooms_path
    authorize @chatroom
  end

  private

  def approve

  end

end



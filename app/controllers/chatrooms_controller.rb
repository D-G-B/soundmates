class ChatroomsController < ApplicationController

  def index

    @chatrooms = policy_scope(Chatroom).order(created_at: :desc)
    # # @userchats = UserChat.all
    # @userchats = policy_scope(UserChat).order(created_at: :desc).where(user_id: @user)
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
    # make button go here it must be a post
    @chatroom = Chatroom.create
    @user = User.find(params[:user_id])
    current_user.chatrooms << @chatroom
    @user.chatrooms << @chatroom
    redirect_to user_path(@user.username)
    #redirect to usrers showpage
    authorize @chatroom
  end

  def accept
    @chatroom = Chatroom.find(params[:id])
    @chatroom.status = true
    @chatroom.save
    redirect_to chatrooms_path
    authorize @chatroom
  end

  private

  def approve

  end

end

##when createing chatroom controller talk to ANDRE!

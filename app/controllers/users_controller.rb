class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show ]

  def index
    @users = policy_scope(User).limit(3)
  end
  
  def show
  @user = User.find(params[:id])
  authorize @user
  end

  #Collections by genre, methods

  def jazz
    @users = policy_scope(User).where(genre: "Jazz")
  end

  def hiphop
    @users = policy_scope(User).where(genre: "Rock")
  end

  def rock
    @users = policy_scope(User).where(genre: "Hip-Hop")
  end

  def electronic
    @users = policy_scope(User).where(genre: "Electronic")
  end

  def funk
    @users = policy_scope(User).where(genre: "Funk/Soul")
  end
end

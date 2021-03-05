class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show ]

  def index
    if params[:query].present?
      sql_query = "\
      users.username ILIKE :query \
      OR users.first_name ILIKE :query \
      OR users.bio ILIKE :query \
      OR genres.name ILIKE :query \
      OR skills.name ILIKE :query \
      "
      @users = policy_scope(User).joins(:genres, :skills).where(sql_query, query: "%#{params[:query]}%")
    else
      @users = policy_scope(User).limit(4)
    end
  end

  def show
    @user = User.find_by(username: params[:username])
    authorize @user
  end

  #   @user = User.find_by(username: params[:username])
  #   authorize @user
  #   @user.update(photo_params)
  #   redirect_to(:controller => "users", :action => "show")
  # end


  #Collections by genre, methods
  def jazz
    @users = policy_scope(User.joins(:genres).where(genres: {name: "Jazz"}))
    authorize @users
  end

  def hiphop
    @users = policy_scope(User.joins(:genres).where(genres: {name: "Hip-Hop"}))
    authorize @users
  end

  def rock
    @users = policy_scope(User.joins(:genres).where(genres: {name: "Rock"}))
    authorize @users
  end

  def electronic
    @users = policy_scope(User.joins(:genres).where(genres: {name: "Electronic"}))
    authorize @users
  end

  def funk
    @users = policy_scope(User.joins(:genres).where(genres: {name: "Funk/Soul"}))
    authorize @users
  end

  #Collections by skills, methods

  def instrumentalists
    @users = policy_scope(User.joins(:skills).where(skills: {name: "Instruments"}))
    authorize @users
  end

  def vocalists
    @users = policy_scope(User.joins(:skills).where(skills: {name: "Vocals"}))
    authorize @users
  end

  def technicians
    @users = policy_scope(User.joins(:skills).where(skills: {name: "Technical"}))
    authorize @users
  end

  def djs
    @users = policy_scope(User.joins(:skills).where(skills: {name: "DJ Mix"}))
    authorize @users
  end

private

  def photo_params
    params.require(:user).permit(:photo)
  end

end

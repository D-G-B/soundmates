class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show ]

  def index
    if params[:query].present?
      sql_query = "\
      users.username @@ :query \
      OR users.first_name @@ :query \
      OR users.bio @@ :query \
      OR genres.name @@ :query \
      OR skills.name @@ :query \
      "
      # @users = policy_scope(User).where(sql_query, query: "%#{params[:query]}%")
      @users = policy_scope(User).joins(:genres, :skills).where(sql_query, query: "%#{params[:query]}%")
      # @users = policy_scope(User).includes(:trackable => [:genre, :skill]).where(sql_query, query: "%#{params[:query]}%")
    else
      @users = policy_scope(User).limit(3)
    end
  end

  def show
    @user = User.find_by(username: params[:username])
    authorize @user
  end

  #Collections by genre, methods
  def search
  end

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

  #Collections by skills, methods

  def instrumentalists
    @users = policy_scope(User).where(skill: "Instruments")
  end

  def vocalists
    @users = policy_scope(User).where(skill: "Vocals")
  end

  def technicians
    @users = policy_scope(User).where(skill: "Technical")
  end

  def djs
    @users = policy_scope(User).where(skill: "DJ Mix")
  end

end

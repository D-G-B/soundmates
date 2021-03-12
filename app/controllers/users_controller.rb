class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :new, :create ]

  def index
    if params[:query].present?
      sql_query = "\
      users.username ILIKE :query \
      OR users.first_name ILIKE :query \
      OR users.bio ILIKE :query \
      OR genres.name ILIKE :query \
      OR skills.name ILIKE :query \
      "
      @users = policy_scope(User).joins(:genres, :skills).where(sql_query, query: "%#{params[:query]}%").distinct
    else
      @users = policy_scope(User).limit(4)
    end
  end

  def show
    @user = User.find_by(username: params[:username])
  
    #attempt two
    # if user_signed_in?
    #   @chatrooms = current_user.chatrooms
    #   @chatroom = current_user.chatrooms
    #                           .merge(@user.chatrooms)
    #                           .first
    #                           raise
    # end
    #attempt three
  if user_signed_in?
    our_chatroom_ids = current_user.chatrooms.pluck(:id)
    their_chatroom_ids = @user.chatrooms.pluck(:id)

    if !our_chatroom_ids.empty?
    chatroom_id = our_chatroom_ids & their_chatroom_ids
      if !chatroom_id.empty?
    @chatroom = Chatroom.find(chatroom_id[0])
      # our_chatroom_ids.each do |id|
      #   if their_chatroom_ids.include?(id)
      #     @chatroom = Chatroom.find(id)
      #   else
      #     raise
      #     @chatroom = false
      #   end
      # end
      end
    else
      @chatroom = false
    end
  end

    
    
    
    # shared_chatroom_ids = our_chatroom_ids.union(their_chatroom_ids)
    # @chatroom = Chatroom.find(shared_chatroom_ids)
    # raise
    #attempt one
    # @chatroom = current_user.chatrooms
    #                         .joins(:user_chats)
    #                         .find_by(user_chats: {user: @user})
    
    authorize @user
    @share = Share.new
  end

  #def new
  #  @user = User.new
  #  @user.genres.build
  #  @user.skills.build
  #end

  def add_photo
    @user = User.find_by(username: params[:username])
    authorize @user
    @user.update(photo_params)
    redirect_to(:controller => "users", :action => "show")
  end

  #Collections by genre, methods


  def genre
    if params[:query] == "rock"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Rock"}))

    elsif params[:query] == "jazz"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Jazz"}))

    elsif params[:query] == "hip_hop"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Hip-Hop"}))

    elsif params[:query] == "pop"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Pop"}))

    elsif params[:query] == "electronic"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Electronic"}))

    elsif params[:query] == "funk_soul"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Funk/Soul"}))

    elsif params[:query] == "folk"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Folk, World, & Country"}))

    elsif params[:query] == "classical"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Classical"}))

    elsif params[:query] == "stage"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Stage & Screen"}))

    elsif params[:query] == "reggae"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Reggae"}))

    elsif params[:query] == "latin"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "latin"}))

    elsif params[:query] == "blues"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Blues"}))

    elsif params[:query] == "non_music"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Non-Music"}))

    elsif params[:query] == "childrens"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Children's"}))

    elsif params[:query] == "military"
      @users = policy_scope(User.joins(:genres).where(genres: {name: "Brass & Military"}))
    end
    authorize @users
  end

  def skills
    if params[:query] == "remix"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "Remix"}))

    elsif params[:query] == "vocals"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "Vocals"}))

    elsif params[:query] == "instruments"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "Instruments"}))

    elsif params[:query] == "writing"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "Writing"}))

    elsif params[:query] == "arrangement"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "Arrangement"}))

    elsif params[:query] == "production"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "Production"}))

    elsif params[:query] == "technical"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "Technical"}))

    elsif params[:query] == "visuals"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "Visuals"}))

    elsif params[:query] == "dj_mix"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "DJ Mix"}))

    elsif params[:query] == "management"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "Management"}))

    elsif params[:query] == "conducting_&_leading"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "Conducting & Leading"}))

    elsif params[:query] == "acting,_literary_&_spoken"
      @users = policy_scope(User.joins(:skills).where(skills: {name: "Acting, Literary & Spoken"}))
    end

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

  def strong_params
    params.require(:user)
          .permit(User::STRONG_PARAMS, skills_attributes: [ :name ], genres_attributes: [ :name ] )
  end

end

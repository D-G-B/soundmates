class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show ]

  def show
  @user = User.find_by(username: params[:username])
  authorize @user
  end
end

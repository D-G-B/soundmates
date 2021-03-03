class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show ]

  def show
  @user = User.find(params[:id])
  authorize @user
  end
end

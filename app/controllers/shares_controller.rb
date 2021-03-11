class SharesController < ApplicationController
before_action :authenticate_user!, only: [ :index, :show, :create]

  def create
    @share = Share.new(share_params)
    @share.user = current_user
    authorize @share
    @share.save
    redirect_to user_path(current_user.username)
  end

  def show
    authorize @share
  end

  def update
    authorize @share
  end

  def destroy
    authorize @share
  end

private

  def share_params
    params.require(:share).permit(:link, :platform, :genre_id)
  end

end

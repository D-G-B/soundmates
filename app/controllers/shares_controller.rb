class SharesController < ApplicationController
before_action :authenticate_user!, only: [ :index, :show, :create]

  def create
    authorize @share
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
end

class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :show, :create]

  def create
    authorize @message
  end

  def show
    authorize @message
  end

  def update
    authorize @message
  end

  def destroy
    authorize @message
  end
end

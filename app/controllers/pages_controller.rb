class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def about
    @users = policy_scope(User).limit(4)
  end
end

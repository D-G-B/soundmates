class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def about
    @users = policy_scope(User).where(id: (1..4))
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about ]

  def home
  end

  def about
    @users = policy_scope(User).where(last_name: ["Agoh", "Bonnaffoux", "Brandt"]).or(policy_scope(User).where(first_name: "Joleana"))
  end
end

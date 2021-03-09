class UserPolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  #method to update profile picture
  def add_photo?
    true
  end

  #Collections by genre, methods

  def genre?
    true
  end


  #Collections by skills, methods

  def instrumentalists?
    true
  end

  def vocalists?
    true
  end

  def technicians?
    true
  end

  def djs?
    true
  end
end

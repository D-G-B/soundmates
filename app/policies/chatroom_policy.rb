class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.chatrooms
    end
  end

  def show?
    true
  end

  def create?
    true
  end

end

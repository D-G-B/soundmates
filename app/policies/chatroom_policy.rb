class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.chatrooms
    end
  end

  def show?
    true
  end

end

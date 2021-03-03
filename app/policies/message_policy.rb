class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    !user.nil?
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    update?
  end
end

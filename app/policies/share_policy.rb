class SharePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.user == user
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

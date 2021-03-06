class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    create?
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def edit?
    update?
  end

  def update?
    record == user || user.admin
  end

  def destroy?
    record == user || user.admin
  end
end

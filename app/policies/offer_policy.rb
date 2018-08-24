class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def pending?
    update?
  end
  def index?
    update?
  end

  def new?
    create?
  end

  def confirm?
    update?
  end

  def create?
    true
  end

  def edit
    update?
  end

  def update?
    record.user == user || user.admin
  end

  def destroy?
    record.user == user || user.admin
  end
end

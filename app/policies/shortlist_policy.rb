class ShortlistPolicy < ApplicationPolicy

  def index?
    true
   # record.user = user
  end

  def show?
    true
    #record.user = user
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    record.user = user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

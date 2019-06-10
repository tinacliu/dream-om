class ProjectPolicy < ApplicationPolicy

  def index?
    record.user == current_user
  end

  def show?
    record.user == current_user
  end

  def create?
    true
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
    record.user == current_user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

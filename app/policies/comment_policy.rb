class CommentPolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    record.shortlist.user == user
  end

  def edit?
    update?
  end

  def destroy?
    # true
    record.shortlist.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end

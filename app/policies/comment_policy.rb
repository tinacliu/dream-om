class CommentPolicy < ApplicationPolicy

  def index?
    record.user = user
  end

  def show?
    false
  end

  def create?
    user_signed_in?
  end

  def new?
    create?
  end

  def update?
    record.user = user
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

class UsersController < ApplicationController

  def show
    @user = current_user
    @comment = Comment.new
    @architects = policy_scope(Architect)
    @project = Project.new
   # authorize @comment
  end
end

class UsersController < ApplicationController

  def show
    @user = current_user
    @comment = Comment.new
   # authorize @comment
  end
end

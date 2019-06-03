class ProfilesController

  def show
    @user = current_user
    authorize @user
  end
end

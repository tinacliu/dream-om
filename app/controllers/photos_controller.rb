class PhotosController < ApplicationController

  def create
    @photo = Photo.new(photo_params)
    @shortlist = Shortlist.find(params[:shortlist_id])
    @photo.shortlist = @shortlist
    authorize @photo
    if @photo.save
      flash[:notice] = "The photo has been uploaded."
      redirect_to profile_path
    else
      @user = current_user
      flash[:alert] = "There is an error"
      @comment = Comment.new
      @architects = policy_scope(Architect)
      render "users/show"
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:photo_url)
  end
end

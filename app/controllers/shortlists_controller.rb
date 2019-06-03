class ShortlistsController < ApplicationController



  def create
    @shortlist = Shortlist.new(shortlist_params)
    authorize @shortlist
    @shortlist.user = current_user
    if @shortlist.save
  end


  def destroy
    @shortlist = Shortlist.find(params[:id])
    autorize @shortlist
    @shortlist.destroy
    redirect_to profile_path
  end

end

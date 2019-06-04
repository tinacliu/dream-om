class ShortlistsController < ApplicationController



  def create
    @shortlist = Shortlist.new(shortlist_params)
    authorize @shortlist
    @shortlist.user = current_user
    if @shortlist.save
      flash[:notice] = "Shortlist created"
      redirect_to shortlist_page(@shortlist)
    else
      flash[:warning] = "Shortlist couldn't be created"
      redirect_to profile_path
    end
  end


  def destroy
    @shortlist = Shortlist.find(params[:id])
    authorize @shortlist
    @shortlist.destroy
    redirect_to profile_path
  end

  private

  def shortlist_params
    params.require(:shortlist).permit(:owner_id, :plot_id)
  end


end

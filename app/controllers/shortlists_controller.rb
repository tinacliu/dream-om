class ShortlistsController < ApplicationController



  def create
    @plot = Plot.find(params[:plot_id])
    @shortlist = Shortlist.new
    authorize @shortlist
    @shortlist.user = current_user
    @shortlist.plot = @plot
    if @shortlist.save
      flash[:notice] = "Plot added to shortlist"
      render 'plots/show'
    else
      flash[:warning] = "Shortlist couldn't be created"
      render 'plots/show'
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
    params.require(:shortlist).permit(:plot_id)
  end


end

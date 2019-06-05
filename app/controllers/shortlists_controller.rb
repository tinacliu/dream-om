class ShortlistsController < ApplicationController



  def create

    @plot = Plot.find(params[:plot_id])
    @shortlist = Shortlist.new
    authorize @shortlist
    @shortlist.user = current_user
    @shortlist.plot = @plot
    if @shortlist.save
      flash[:notice] = "Plot added to shortlist"
      redirect_to plot_path(@plot)
    else
      flash[:warning] = "Shortlist couldn't be created"
      redirect_to plot_path(@plot)
    end
  end

  def destroy
    @shortlist = Shortlist.find(params[:id])
    plot = @shortlist.plot
    # binding.pry
    authorize @shortlist
    @shortlist.destroy
    flash[:notice] = "Plot removed from shortlist"
    if Rails.application.routes.recognize_path(request.referrer)[:controller] == "users"
      redirect_to profile_path
    else
      redirect_to plot_path(plot)
    end
  end

  private

  def shortlist_params
    params.require(:shortlist).permit(:plot_id)
  end


end

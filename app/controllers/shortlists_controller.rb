class ShortlistsController < ApplicationController



  def create

  end


  def destroy
    @shortlist = Shortlist.find(params[:id])

  end

end

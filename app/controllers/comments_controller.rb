class CommentsController < ApplicationController
  before_action :set_shortlist, only: [:create]

  def create
    @comment = Comment.new(comment_params)
    authorize @comment
    @comment.shortlist = @shortlist
    if @comment.save
      flash[:success] = "Comment successfully saved"
    else
      flash[:warning] = "Comment could not be saved"
    end

    respond_to do |format|
      format.html { redirect_to profile_path }
      format.js
    end
  end

  # def edit
  #   if @comment.update(comment_params)
  #     flash[:success] = "Article updated!"
  #   else
  #     flash[:warning] = "Comment could not be updated"
  #   end
  # end

  def destroy
    @comment = Comment.find(params[:id])
    authorize @comment
    @comment.destroy
    redirect_to profile_path
  end

  private

  def set_shortlist
    @shortlist = Shortlist.find(params[:shortlist_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end

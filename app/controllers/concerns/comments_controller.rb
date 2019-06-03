class CommentsController
  def create
    @comment = Comment.new(comment_params)
    authorize @comment
    if @comment.save
      redirect_to profile_path
    else
      redirect_to profile_path
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    authorize @comment
    @comment.destroy
    redirect_to profile_path
  end

  private

  def comment_params
    params.require[:comment].permit[:content]
  end
end

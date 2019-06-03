class CommentsController


  def create

  end

  def destroy
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params

  end

end


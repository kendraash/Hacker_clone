class CommentsController < ApplicationController
  def index
    @link = Link.find(params[:link_id])
    @comment = Comment.new
  end

  def new
  end

  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment added!"
      redirect_to link_comments_path(@link)
    else
      flash[:alert] = "Comment not added"
      render :index
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end

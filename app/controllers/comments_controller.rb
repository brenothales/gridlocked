class CommentsController < ApplicationController

  def create
  	@post = Post.find_by(params[:id])
    @comment = current_user.comments.build(comment_params)
    @comment.post_id = @post.id
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def new
  	@comment = Comment.new
  end

  def destroy
    @comment = Comment.find(params[:id])
    @notification = Notification.where(:comment_id => @comment.id)
    if @notification.nil?
      @notification.destroy
    end
    @comment.destroy
    redirect_to :back
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :user_id, :post_id)
    end
end

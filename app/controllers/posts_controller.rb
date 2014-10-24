class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to root_url
    else
      redirect_to root_url
    end
  end

  def destroy
    @post = Post.find_by(params[:model_id])
    @post.destroy
    redirect_to :back
  end

  private

    def post_params
      params.require(:post).permit(:title, :content, :location)
    end
end

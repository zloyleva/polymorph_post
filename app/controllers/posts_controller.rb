class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    post = Post.new(post_params)
    post.save
    redirect_to root_url
  end

  private
  def post_params
    params.require(:post).permit(:body)
  end
end

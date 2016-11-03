class CommentsController < ApplicationController
  def create
    @parent = Post.find_by_id(params[:post_id])

    @comment  =  @parent.comments.new( body:  comment_params[:body])
    @comment.save

    redirect_to root_url
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end

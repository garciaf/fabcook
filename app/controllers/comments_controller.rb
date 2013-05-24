class CommentsController < ApplicationController
  before_filter :authenticate_user!, :only => :destroy


	def create
    @post = Post.find(params[:post_id])
    if user_signed_in?
      params[:comment][:commenter] = current_user.to_s
      params[:comment][:email] = current_user.email
    end
    @comment = @post.comments.create(params[:comment])
    redirect_to blog_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to blog_path(@post)
  end
end

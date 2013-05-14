class CommentsController < ApplicationController
  before_filter :authenticate_user!, :only => :destroy
  before_filter :find_post

	def create
    @comment = @post.comments.create(params[:comment])
    redirect_to home_path(@post)
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to home_path(@post)
  end
end

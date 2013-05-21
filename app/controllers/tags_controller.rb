class TagsController < ApplicationController
  def index
    @tags = Post.tag_counts_on(:tags)
  end

  def show
    @tag = params[:id]
    @posts = Post.tagged_with(params[:id]).paginate(:page => params[:page], :per_page => 5)
  end

end

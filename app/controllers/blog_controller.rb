class BlogController < ApplicationController
  before_filter :find_post, :only => [:show]
  
  def index
    @posts = Post.paginate(:page => params[:page], :per_page => 5)
  end

  def search
    @search = params[:search]
    @posts = Post.search_for(@search).paginate(:page => params[:page], :per_page => 5)
  end
end

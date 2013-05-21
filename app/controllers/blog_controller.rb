class BlogController < ApplicationController
  before_filter :find_post, :only => [:show]
  
  def index
    @posts = Post.search_for(params[:search]).paginate(:page => params[:page], :per_page => 5)
  end
  
end

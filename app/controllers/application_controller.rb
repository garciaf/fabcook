class ApplicationController < ActionController::Base
  protect_from_forgery

  def find_post
    @post = Post.find(params[:id])
  end


end

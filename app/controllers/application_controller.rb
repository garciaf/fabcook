class ApplicationController < ActionController::Base
  protect_from_forgery

  def find_post
    @post = Post.find(params[:id])
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied."
    redirect_to root_url
  end

end

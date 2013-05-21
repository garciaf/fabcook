class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale
   
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def default_url_options( options={} )
    { :locale => I18n.locale }
  end

  def find_post
    @post = Post.find(params[:id])
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied."
    redirect_to root_url
  end
end

class PhotosController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # POST /photos
  def create
    @post = Post.find(params[:photo][:post_id])
    @photo = Photo.new(params[:photo])
    @photo.save
    redirect_to edit_post_path(@post)
  end

  def update
    @post = Post.find(params[:post_id])
    @photo = Photo.find(params[:id])
    @photo.update_attribute("caption", params[:photo][:caption])
    redirect_to edit_post_path(@post)
  end

  # DELETE /photos/1
  def destroy
    @post = Post.find(params[:post_id])
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to edit_post_path(@post)
  end
end

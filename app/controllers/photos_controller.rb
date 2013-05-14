class PhotosController < ApplicationController
  before_filter :authenticate_user!

  # POST /photos
  def create
    @post = Post.find(params[:photo][:post_id])
    @photo = Photo.new(params[:photo])
    @photo.save
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

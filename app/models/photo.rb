class Photo < ActiveRecord::Base
  attr_accessible :post_id, :image, :remote_image_url
  belongs_to :post
  mount_uploader :image, ImageUploader
end

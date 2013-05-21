class Photo < ActiveRecord::Base
  attr_accessible :post_id, :image, :remote_image_url, :caption
  belongs_to :post
  translates :caption

  mount_uploader :image, ImageUploader
end

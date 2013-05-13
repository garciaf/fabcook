class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body, :commenter, :email
  validates :email,  :presence => true
end

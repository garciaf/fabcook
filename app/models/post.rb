class Post < ActiveRecord::Base
  scoped_search :on => [:title, :content]
  scoped_search :in => :tags, :on => :name

  attr_accessible :content, :name, :title, :tag_list
  translates :title, :content
  
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  has_many :comments, :dependent => :destroy
  has_many :photos
  
  acts_as_taggable
end

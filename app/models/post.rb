class Post < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :comments

  validates :description, :presence => true
  validates :title, :presence => true
end

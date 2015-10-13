class Comment < ActiveRecord::Base
  validates :author, :presence => true
  validates :body, :presence => true

  belongs_to :link
end

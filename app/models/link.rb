class Link < ActiveRecord::Base
  validates :title, :presence => true
  validates :url, :presence => true

  has_many :comments

  def self.ranking
    links = Link.all.sort_by { |a| ((a.points + a.comments.length))  }.reverse!
    links
  end


end

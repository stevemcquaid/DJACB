class Song < ActiveRecord::Base
  attr_accessible :artist, :title, :url, :user

  has_many :comments
  belongs_to :user
  has_many :ratings

  scope :recent, order("created_at desc").limit(10) 

  def date
  	self.created_at.strftime("%m/%d/%Y %I:%M%p")
  end

  def avg_rating
  	theRatings = self.ratings
  	theRatings.collect(&:rating).sum.to_f/theRatings.length if theRatings.length > 0
  end
end

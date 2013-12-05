class Comment < ActiveRecord::Base
  attr_accessible :comment, :song, :user

  belongs_to :song
  belongs_to :user

  scope :recent, order("created_at desc").limit(10) 
  
  def date
  	self.created_at.strftime("%m/%d/%Y %I:%M%p")
  end
end

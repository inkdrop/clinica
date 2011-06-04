class Subject < ActiveRecord::Base
  belongs_to :user
  
  has_many :topics
  
  def to_s
    self.title
  end
end

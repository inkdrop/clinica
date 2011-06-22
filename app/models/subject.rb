class Subject < ActiveRecord::Base
  belongs_to :user
  
  has_many :topics, :dependent => :destroy
  
  def to_s
    self.title
  end
end

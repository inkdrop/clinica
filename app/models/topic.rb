class Topic < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  
  validates :title, :description, :content, :presence => true
  validates :title, :description, :length => {:minimum => 6, :maximum => 255}
  validates :content, :length => {:minimum => 6}
  
  def to_s
    self.title
  end
end

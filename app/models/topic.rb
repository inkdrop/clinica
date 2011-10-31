class Topic < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  
  validates :title, :description, :content, :presence => true
  validates :title, :uniqueness => true
  validates :title, :description, :length => {:minimum => 6, :maximum => 255}
  validates :content, :length => {:minimum => 6}
  
  has_friendly_id :title, :use_slug => true,
                          :approximate_ascii => true,
                          :max_length => 50
  
  def to_s
    self.title
  end
end

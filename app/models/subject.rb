class Subject < ActiveRecord::Base
  belongs_to :user
  
  has_many :topics, :dependent => :destroy
  
  cattr_reader :per_page
  @@per_page = 4
  
  def to_s
    self.title
  end
end

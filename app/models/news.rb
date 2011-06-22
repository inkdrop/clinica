class News < ActiveRecord::Base
  belongs_to :user
  
  cattr_reader :per_page
  @@per_page = 4
  
  def to_s
    self.title
  end
end

class Topic < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  
  cattr_reader :per_page
  @@per_page = 9

  def to_s
    self.title
  end
end

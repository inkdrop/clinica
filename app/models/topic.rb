class Topic < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject

  def to_s
    self.title
  end
end

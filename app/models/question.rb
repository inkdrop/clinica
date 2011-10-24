class Question < ActiveRecord::Base

  validates :question, :answer, :presence => true
  validates :question, :length => {:minimum => 6, :maximum => 255}

end

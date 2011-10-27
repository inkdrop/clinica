class Contact < ActiveRecord::Base
  after_initialize :init
  
  validates :message, :age, :presence => true
  validates :firstName, :lastName, :presence => true, :length => {:minimum => 2, :maximum => 255}
  validates :email, :presence => true, :email => true, :length => {:minimum => 6, :maximum => 255}
  
  def init
    self.read ||= false #will set the default value only if it's nil
  end
  
  def isRead
    self.read ? "read" : "unread"
  end  
  
end

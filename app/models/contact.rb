class Contact < ActiveRecord::Base
  after_initialize :init
  
  def init
    self.read ||= false #will set the default value only if it's nil
  end  
  
end

class Subject < ActiveRecord::Base
  belongs_to :user
  
  has_many :topics, :dependent => :destroy
  
  paginate_alphabetically :by => :title, :show_all_letters => true
  
  def to_s
    self.title
  end
end

class Subject < ActiveRecord::Base
  belongs_to :user

  cattr_reader :per_page
  @@per_page = 5

  has_many :topics, :dependent => :destroy
  
  paginate_alphabetically :by => :title, :show_all_letters => false
  
  def to_s
    self.title
  end
end

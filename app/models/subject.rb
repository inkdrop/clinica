class Subject < ActiveRecord::Base
  belongs_to :user

  cattr_reader :per_page
  @@per_page = 5

  has_many :topics, :dependent => :destroy, :validate => true
  
  paginate_alphabetically :by => :title, :show_all_letters => false
  
  validates :title, :description, :content, :presence => true
  validates :title, :description, :length => {:minimum => 6, :maximum => 255}
  validates :title, :uniqueness => true
  validates :content, :length => {:minimum => 6}
  
  has_friendly_id :title, :use_slug => true,
                          :approximate_ascii => true,
                          :max_length => 50
  
  def to_s
    self.title
  end
end

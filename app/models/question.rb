class Question < ActiveRecord::Base

  include PgSearch
  multisearchable :against => [:question, :answer]

  validates :question, :answer, :presence => true
  validates :question, :length => {:minimum => 6, :maximum => 255}
  validates :question, :uniqueness => true
  
  has_friendly_id :question, :use_slug => true,
                             :approximate_ascii => true,
                             :max_length => 50

end

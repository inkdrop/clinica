class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  has_many :news
  has_many :subjects
  has_many :topics
  
  validates :name, :presence => true, :length => {:minimum => 2, :maximum => 255}
  validates :password_confirmation, :presence => true
  
  def to_s
    self.name
  end
end

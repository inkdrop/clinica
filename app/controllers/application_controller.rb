class ApplicationController < ActionController::Base
  
  before_filter :load_random_subjects
  @random_subjects
  
  protect_from_forgery
  
  #Used to load the records displayed on the sidebars throughout the site
  def load_random_subjects
    @random_subjects = Subject.find(:all, :limit => 3, :order => 'random()')  
  end
end

class AddIndexToTopics < ActiveRecord::Migration
  def self.up
    add_index :topics, :title, :unique => true
  end

  def self.down
    remove_index :topics, :column => :title    
  end
end

class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :subjects, :user_id
    add_index :topics, :user_id
  end

  def self.down
    remove_index :subjects, :column => :user_id
    remove_index :topics, :column => :user_id
  end
end

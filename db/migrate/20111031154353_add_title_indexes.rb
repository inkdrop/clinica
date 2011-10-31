class AddTitleIndexes < ActiveRecord::Migration
  def self.up
    add_index :questions, :question, :unique => true
    add_index :subjects, :title, :unique => true
  end

  def self.down
    remove_index :questions, :column => :question
    remove_index :subjects, :column => :title
  end
end

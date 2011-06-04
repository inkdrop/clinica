class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.string :title
      t.string :description
      t.text :content
      t.references :user
      t.references :subject

      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end

class AddReadToContacts < ActiveRecord::Migration
  def self.up
    add_column :contacts, :read, :boolean
  end

  def self.down
    remove_column :contacts, :read
  end
end

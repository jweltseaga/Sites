class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :categories, :desription, :text
  end

  def self.down
    remove_column :categories, :desription
  end
end

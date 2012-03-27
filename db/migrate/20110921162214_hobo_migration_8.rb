class HoboMigration8 < ActiveRecord::Migration
  def self.up
    rename_column :categories, :desription, :description
  end

  def self.down
    rename_column :categories, :description, :desription
  end
end

class CatPermalink < ActiveRecord::Migration
  def self.up
    add_column :categories, :permalink, :text
  end

  def self.down
    remove_column :categories, :permalink
  end
end

class PermaString < ActiveRecord::Migration
  def self.up
    change_column :categories, :permalink, :string, :limit => 255
  end

  def self.down
    change_column :categories, :permalink, :text
  end
end

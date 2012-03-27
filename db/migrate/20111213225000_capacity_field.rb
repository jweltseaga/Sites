class CapacityField < ActiveRecord::Migration
  def self.up
    add_column :machines, :capacity, :string
    change_column :machines, :published, :boolean, :default => "false"

    change_column :categories, :published, :boolean, :default => "false"
  end

  def self.down
    remove_column :machines, :capacity
    change_column :machines, :published, :boolean, :default => false

    change_column :categories, :published, :boolean, :default => false
  end
end

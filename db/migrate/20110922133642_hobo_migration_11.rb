class HoboMigration11 < ActiveRecord::Migration
  def self.up
    add_column :manual_assignments, :position, :integer
  end

  def self.down
    remove_column :manual_assignments, :position
  end
end

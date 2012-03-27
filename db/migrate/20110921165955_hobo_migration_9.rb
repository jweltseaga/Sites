class HoboMigration9 < ActiveRecord::Migration
  def self.up
    add_column :machine_assignments, :position, :integer
  end

  def self.down
    remove_column :machine_assignments, :position
  end
end

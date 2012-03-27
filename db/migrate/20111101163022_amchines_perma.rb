class AmchinesPerma < ActiveRecord::Migration
  def self.up
    add_column :machines, :permalink, :string
  end

  def self.down
    remove_column :machines, :permalink
  end
end

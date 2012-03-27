class StaticsGen < ActiveRecord::Migration
  def self.up
    create_table :statics do |t|
      t.string   :type
      t.datetime :created_at
      t.datetime :updated_at
    end

    change_column :machines, :published, :boolean, :default => "false"

    change_column :categories, :published, :boolean, :default => "false"
  end

  def self.down
    change_column :machines, :published, :boolean, :default => false

    change_column :categories, :published, :boolean, :default => false

    drop_table :statics
  end
end

class Rename < ActiveRecord::Migration
  def self.up
    change_column :machines, :published, :boolean, :default => "false"

    change_column :categories, :published, :boolean, :default => "false"

    rename_column :pressreleases, :title, :name
  end

  def self.down
    change_column :machines, :published, :boolean, :default => false

    change_column :categories, :published, :boolean, :default => false

    rename_column :pressreleases, :name, :title
  end
end

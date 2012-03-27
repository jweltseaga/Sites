class SitesStatic < ActiveRecord::Migration
  def self.up
    change_column :machines, :published, :boolean, :default => "false"

    change_column :categories, :published, :boolean, :default => "false"

    add_column :sites, :about, :text
    add_column :sites, :jobs, :text
    add_column :sites, :terms, :text
  end

  def self.down
    change_column :machines, :published, :boolean, :default => false

    change_column :categories, :published, :boolean, :default => false

    remove_column :sites, :about
    remove_column :sites, :jobs
    remove_column :sites, :terms
  end
end

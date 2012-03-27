class TeaserField < ActiveRecord::Migration
  def self.up
    change_column :machines, :published, :boolean, :default => "false"

    change_column :categories, :published, :boolean, :default => "false"

    add_column :pressreleases, :teaser, :string
  end

  def self.down
    change_column :machines, :published, :boolean, :default => false

    change_column :categories, :published, :boolean, :default => false

    remove_column :pressreleases, :teaser
  end
end

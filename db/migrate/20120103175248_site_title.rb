class SiteTitle < ActiveRecord::Migration
  def self.up
    change_column :machines, :published, :boolean, :default => "false"

    add_column :categories, :photo_file_name, :string
    add_column :categories, :photo_content_type, :string
    add_column :categories, :photo_file_size, :integer
    add_column :categories, :photo_updated_at, :datetime
    change_column :categories, :published, :boolean, :default => "false"

    add_column :sites, :title, :string
  end

  def self.down
    change_column :machines, :published, :boolean, :default => false

    remove_column :categories, :photo_file_name
    remove_column :categories, :photo_content_type
    remove_column :categories, :photo_file_size
    remove_column :categories, :photo_updated_at
    change_column :categories, :published, :boolean, :default => false

    remove_column :sites, :title
  end
end

class Paperlcip < ActiveRecord::Migration
  def self.up
    add_column :machines, :photo_file_name, :string
    add_column :machines, :photo_content_type, :string
    add_column :machines, :photo_file_size, :integer
    add_column :machines, :photo_updated_at, :datetime

    add_column :manuals, :file_name, :string
  end

  def self.down
    remove_column :machines, :photo_file_name
    remove_column :machines, :photo_content_type
    remove_column :machines, :photo_file_size
    remove_column :machines, :photo_updated_at

    remove_column :manuals, :file_name
  end
end

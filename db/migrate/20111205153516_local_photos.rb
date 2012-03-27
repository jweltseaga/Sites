class LocalPhotos < ActiveRecord::Migration
  def self.up
    add_column :machines, :us_photo_file_name, :string
    add_column :machines, :us_photo_content_type, :string
    add_column :machines, :us_photo_file_size, :integer
    add_column :machines, :us_photo_updated_at, :datetime
    add_column :machines, :uk_photo_file_name, :string
    add_column :machines, :uk_photo_content_type, :string
    add_column :machines, :uk_photo_file_size, :integer
    add_column :machines, :uk_photo_updated_at, :datetime
    add_column :machines, :in_photo_file_name, :string
    add_column :machines, :in_photo_content_type, :string
    add_column :machines, :in_photo_file_size, :integer
    add_column :machines, :in_photo_updated_at, :datetime
    remove_column :machines, :photo_file_name
    remove_column :machines, :photo_file_size
    remove_column :machines, :photo_updated_at
    change_column :machines, :published, :boolean, :default => "false"

    change_column :categories, :published, :boolean, :default => "false"
  end

  def self.down
    remove_column :machines, :us_photo_file_name
    remove_column :machines, :us_photo_content_type
    remove_column :machines, :us_photo_file_size
    remove_column :machines, :us_photo_updated_at
    remove_column :machines, :uk_photo_file_name
    remove_column :machines, :uk_photo_content_type
    remove_column :machines, :uk_photo_file_size
    remove_column :machines, :uk_photo_updated_at
    remove_column :machines, :in_photo_file_name
    remove_column :machines, :in_photo_content_type
    remove_column :machines, :in_photo_file_size
    remove_column :machines, :in_photo_updated_at
    add_column :machines, :photo_file_name, :string
    add_column :machines, :photo_file_size, :integer
    add_column :machines, :photo_updated_at, :datetime
    change_column :machines, :published, :boolean, :default => false

    change_column :categories, :published, :boolean, :default => false
  end
end

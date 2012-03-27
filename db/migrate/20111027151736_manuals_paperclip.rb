class ManualsPaperclip < ActiveRecord::Migration
  def self.up
    add_column :manuals, :manual_file_name, :string
    add_column :manuals, :manual_content_type, :string
    add_column :manuals, :manual_file_size, :integer
    add_column :manuals, :manual_updated_at, :datetime
  end

  def self.down
    remove_column :manuals, :manual_file_name
    remove_column :manuals, :manual_content_type
    remove_column :manuals, :manual_file_size
    remove_column :manuals, :manual_updated_at
  end
end

class Pdfs < ActiveRecord::Migration
  def self.up
    add_column :brochures, :pdf_file_name, :string
    add_column :brochures, :pdf_content_type, :string
    add_column :brochures, :pdf_file_size, :integer
    add_column :brochures, :pdf_updated_at, :datetime

    add_column :manuals, :pdf_file_name, :string
    add_column :manuals, :pdf_content_type, :string
    add_column :manuals, :pdf_file_size, :integer
    add_column :manuals, :pdf_updated_at, :datetime
  end

  def self.down
    remove_column :brochures, :pdf_file_name
    remove_column :brochures, :pdf_content_type
    remove_column :brochures, :pdf_file_size
    remove_column :brochures, :pdf_updated_at

    remove_column :manuals, :pdf_file_name
    remove_column :manuals, :pdf_content_type
    remove_column :manuals, :pdf_file_size
    remove_column :manuals, :pdf_updated_at
  end
end

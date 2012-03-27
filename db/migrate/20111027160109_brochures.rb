class Brochures < ActiveRecord::Migration
  def self.up
    create_table :brochures do |t|
      t.string   :name
      t.string   :external_description
      t.string   :internal_description
      t.string   :file_name
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :brochure_file_name
      t.string   :brochure_content_type
      t.integer  :brochure_file_size
      t.datetime :brochure_updated_at
    end
  end

  def self.down
    drop_table :brochures
  end
end

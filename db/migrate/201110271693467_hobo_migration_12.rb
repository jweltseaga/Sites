class HoboMigration12 < ActiveRecord::Migration
  def self.up
    Brochure.create_translation_table! :name => :string, :external_description => :string, :internal_description => :string
  end

  def self.down
    Brochure.drop_translation_table!
  end
end

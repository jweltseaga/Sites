class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :features do |t|
      t.text     :name
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :machine_id
    end
		Feature.create_translation_table! :name => :text
    add_index :features, [:machine_id]
  end

  def self.down
    drop_table :features
		Feature.drop_translation_table!
  end
end

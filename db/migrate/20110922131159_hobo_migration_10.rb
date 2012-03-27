class HoboMigration10 < ActiveRecord::Migration
  def self.up
    create_table :manual_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :machine_id
      t.integer  :manual_id
    end
    add_index :manual_assignments, [:machine_id]
    add_index :manual_assignments, [:manual_id]

    create_table :manuals do |t|
      t.string   :name
      t.string   :external_description
      t.string   :internal_description
      t.string   :file
      t.datetime :created_at
      t.datetime :updated_at
    end
		Manual.create_translation_table! :name => :string, :external_description => :string, :internal_description => :string
  end

  def self.down
    drop_table :manual_assignments
    drop_table :manuals
		Manual.drop_translation_table!
  end
end

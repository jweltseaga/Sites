class BrochureAssignments < ActiveRecord::Migration
  def self.up
    create_table :brochure_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :machine_id
      t.integer  :brochure_id
      t.integer  :position
    end
    add_index :brochure_assignments, [:machine_id]
    add_index :brochure_assignments, [:brochure_id]
  end

  def self.down
    drop_table :brochure_assignments
  end
end

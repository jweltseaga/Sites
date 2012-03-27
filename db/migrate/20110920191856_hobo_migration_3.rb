class HoboMigration3 < ActiveRecord::Migration
  def self.up
    create_table :machine_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :machine_id
      t.integer  :category_id
    end
    add_index :machine_assignments, [:machine_id]
    add_index :machine_assignments, [:category_id]

    remove_column :machines, :category_id

    remove_index :machines, :name => :index_machines_on_category_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    add_column :machines, :category_id, :integer

    drop_table :machine_assignments

    add_index :machines, [:category_id]
  end
end

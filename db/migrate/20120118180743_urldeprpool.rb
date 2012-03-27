class Urldeprpool < ActiveRecord::Migration
  def self.up
    create_table :urlpools do |t|
      t.string   :oldUrl
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :machine_id
    end
    add_index :urlpools, [:machine_id]

    change_column :machines, :published, :boolean, :default => "false"

    change_column :categories, :published, :boolean, :default => "false"
  end

  def self.down
    change_column :machines, :published, :boolean, :default => false

    change_column :categories, :published, :boolean, :default => false

    drop_table :urlpools
  end
end

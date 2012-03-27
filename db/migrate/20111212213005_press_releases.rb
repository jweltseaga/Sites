class PressReleases < ActiveRecord::Migration
  def self.up
    create_table :pressreleases do |t|
      t.string   :title
      t.string   :permalink
      t.text     :content
      t.boolean  :publishedState
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :site_id
    end
    add_index :pressreleases, [:site_id]

    change_column :machines, :published, :boolean, :default => "false"

    change_column :categories, :published, :boolean, :default => "false"
  end

  def self.down
    change_column :machines, :published, :boolean, :default => false

    change_column :categories, :published, :boolean, :default => false

    drop_table :pressreleases
  end
end

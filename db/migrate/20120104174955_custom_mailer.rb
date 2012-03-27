class CustomMailer < ActiveRecord::Migration
  def self.up
    create_table :mailers do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    change_column :machines, :published, :boolean, :default => "false"

    change_column :categories, :published, :boolean, :default => "false"
  end

  def self.down
    change_column :machines, :published, :boolean, :default => false

    change_column :categories, :published, :boolean, :default => false

    drop_table :mailers
  end
end

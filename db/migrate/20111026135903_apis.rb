class Apis < ActiveRecord::Migration
  def self.up
    create_table :apis do |t|
      t.string   :type
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :apis
  end
end

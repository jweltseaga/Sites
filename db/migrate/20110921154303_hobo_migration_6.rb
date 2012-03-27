class HoboMigration6 < ActiveRecord::Migration
  def self.up
    add_column :users, :user_locale, :string, :default => "us"
  end

  def self.down
    remove_column :users, :user_locale
  end
end

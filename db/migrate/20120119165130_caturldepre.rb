class Caturldepre < ActiveRecord::Migration
  def self.up
    change_column :machines, :published, :boolean, :default => "false"

    change_column :categories, :published, :boolean, :default => "false"

    add_column :urlpools, :category_id, :integer

    add_index :urlpools, [:category_id]
  end

  def self.down
    change_column :machines, :published, :boolean, :default => false

    change_column :categories, :published, :boolean, :default => false

    remove_column :urlpools, :category_id

    remove_index :urlpools, :name => :index_urlpools_on_category_id rescue ActiveRecord::StatementInvalid
  end
end

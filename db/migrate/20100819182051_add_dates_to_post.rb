class AddDatesToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :publish_start, :date
    add_column :posts, :publish_end, :date
    add_column :posts, :active, :boolean ,    :default => true
  end

  def self.down
    remove_column :posts, :active
    remove_column :posts, :publish_end
    remove_column :posts, :publish_start
  end
end

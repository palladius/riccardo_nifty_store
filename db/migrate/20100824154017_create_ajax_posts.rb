class CreateAjaxPosts < ActiveRecord::Migration
  def self.up
    create_table :ajax_posts do |t|
      t.string :subject
      t.text :body
      t.datetime :published_at
      t.timestamps
    end
  end
  
  def self.down
    drop_table :ajax_posts
  end
end

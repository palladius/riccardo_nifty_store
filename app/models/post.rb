class Post < ActiveRecord::Base
  attr_accessible :name, :content, :user_id, :post_id
end

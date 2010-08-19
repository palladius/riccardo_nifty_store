class Post < ActiveRecord::Base
  attr_accessible :name, :content, :user_id, :post_id
  
  belongs_to :user
  belongs_to :post
  #requires it..
  
  def to_s
    self.name.capitalize
  end
end

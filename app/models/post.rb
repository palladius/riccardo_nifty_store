class Post < ActiveRecord::Base
  #attr_accessible :name, :content, :user_id, :post_id
  
  belongs_to :user
  belongs_to :post
  #requires it..
  
  def to_s
    self.name.capitalize
  end
  
  def name_and_user
    "#{to_s} (#{user})"
  end
  
  def father?
    self.post == nil
  end
  
  def title
    to_s
  end
end

module PostsHelper
  
  def father_post_link(post) 
    post.post ? link_to( post.post , post.post) : '--'
  end
  
  
end

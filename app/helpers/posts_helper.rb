module PostsHelper
  
  def father_post_link(post) 
    post.post ? icon_link_to( 'post', post.post , post.post) : '--'
  end

  def sons_post_link(post) 
    sons = Post.find_all_by_post_id(post.id)
    #post.post ? icon_link_to( 'post', post.post , post.post) : '--'
    sons.map{|son| icon_link_to('post',son,son) }
  end
  
  def post_title(post)
    title = link_to(post,post)
    post.father? ? "<b class='post' >#{title}</b>" : "<i class='post' >#{title}</i>"
  end
  
end

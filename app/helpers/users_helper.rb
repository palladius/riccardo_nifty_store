module UsersHelper
  
  def goliardic_link(user)
    link_to(user.goliardic_name,"http://www.goliardia.it/utente.php?nomeutente=#{user.goliardic_name }")
  end
  
  def user_link(user)
    "<span class='user'><tt>" +
      icon_link_to('user', user,user) +
    "</tt></span>"
  end
  
end

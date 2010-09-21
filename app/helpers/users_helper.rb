module UsersHelper
  
  def goliardic_link(user, short = false, opts = {})
    #link_to(user.goliardic_name,"http://www.goliardia.it/utente.php?nomeutente=#{user.goliardic_name }")
    icon_link_to('feluca', user.goliardic_name, 
      "http://www.goliardia.it/utente.php?nomeutente=#{user.goliardic_name }", opts
    )
    
  end
  
  def user_link(user)
    ret = "<span class='user'><tt>" +
      icon_link_to('models/user', user,user) +
    "</tt></span>"
     ret += " (#{goliardic_link(user,true)})"  if user.goliardic_name
    ret
  end
  
end

module UsersHelper
  
  def goliardic_link(user)
    link_to(user.goliardic_name,"http://www.goliardia.it/utente.php?nomeutente=#{user.goliardic_name }")
  end
  
end

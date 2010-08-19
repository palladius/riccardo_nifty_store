module UsersHelper
  
  def goliardic_link(user)
    link_to(user,"http://www.goliardia.it/utente.php?nomeutente=#{user.name}")
  end
end

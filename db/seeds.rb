# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

SEED_VER = '0.9a'

MY_ROLES = %w{ 
 root
 admin           
 user            
 publisher       
 editor       
}   
  
# Roles
MY_ROLES.each{ |role|
  Role.create(:name => role , :notes => "Introduced by rake db:seed (v.#{SEED_VER})", :tags => 'role' )
}

# USERS
User.create(:username => "riccardo", :email => "rusko@palladius.it", :goliardic_name => "palladius", :about_you => "io sono Riccardo e se volete sapere di piu cliccate...", :password => 'prova42').save
User.create(:username => "fabio", :email => "burattino@gmail.com", :goliardic_name => "venerdi", :about_you =>  "Fabiolone e' un programmatore di indubbia fama che ...", :password => 'fabiolone353').save

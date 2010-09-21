# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

SEED_VER = '0.9a'

ROLES = %w{ 
 root
 admin           
 user            
 publisher       
 editor       
}   
  
ROLES.each{|role|
  Role.create(:name => role , :notes => "Introduced by rake db:seed (v.#{SEED_VER})", :tags => 'role' )
}
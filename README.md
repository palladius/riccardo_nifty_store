# SYNOPSIS

This is a Goldy version of RoR 2.3.5 from Riccardo Carlesso
Per ora lo tengo nel mio Dropbox, come proof of concept.
In futuro si vedra'!

# INSTALL

first time:

 git clone git@github.com:palladius/riccardo_nifty_store.git
 rake db:migrate

# TODO

- metti ACL con utenti , capabilities e tabella mediana di merge.
- http://guides.rubyonrails.org/v2.3.11/association_basics.html
- Creating UserRoleAcl object with NiftyGenerators: https://github.com/ryanb/nifty-generators

    rails g nifty:scaffold UserRoleAcl user_id:User role_id:Role creator_id:User description:string 

BUGS

(SOLVED) Bug in insert of posts.

= SAMPLE TABLE =

USERS:
  1: root
  2: rcarlesso
  3: fmattei
  4: zwingli
ACLS:
  na: 1 1
  na: 2 2
  na: 3 2
  na: 4 4
ROLES:
  1: root
  2: admin
  3: god
  4: user
  5: write_posts
  6: review_articles
  7: publisher
  8: editor
  9: write_others_posts

= Credits

 Author: Riccardo Carlesso
 Nifty stuff: thanks to Ryan Bates and DHH to make this fun possible!

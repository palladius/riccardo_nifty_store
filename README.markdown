== SYNOPSIS ==

[![Build Status](https://travis-ci.org/palladius/riccardo_nifty_store.svg?branch=master)](https://travis-ci.org/palladius/riccardo_nifty_store)
[![Code Climate](https://codeclimate.com/github/palladius/riccardo_nifty_store.png)](https://codeclimate.com/github/palladius/riccardo_nifty_store)

This is a Goldy version of RoR 2.3.5 from Riccardo Carlesso

== INSTALL ==

First time:

    git clone git@github.com:palladius/riccardo_nifty_store.git
    rake db:migrate

== TODO ==

*    Put ACLs with users, capabilities and middle merge table

== BUGS ==

*    (SOLVED) Bug in insert of posts.

= SAMPLE TABLE =

USERS:
  1: root
  2: rcarlesso
  3: fmattei
  4: zwingli // Zwingli41 # test
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

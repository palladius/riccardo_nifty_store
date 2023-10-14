# SYNOPSIS

[![Build Status](https://travis-ci.org/palladius/riccardo_nifty_store.svg?branch=master)](https://travis-ci.org/palladius/riccardo_nifty_store)
[![Code Climate](https://codeclimate.com/github/palladius/riccardo_nifty_store.png)](https://codeclimate.com/github/palladius/riccardo_nifty_store)

This is a Goldy version of RoR 2.3.5 from Riccardo Carlesso.

# INSTALL

First time:

    git clone git@github.com:palladius/riccardo_nifty_store.git
    rake db:migrate

# TODO

*    Put ACLs with users, capabilities and middle merge table
*    http://guides.rubyonrails.org/v2.3.11/association_basics.html
*    Creating UserRoleAcl object with NiftyGenerators: https://github.com/ryanb/nifty-generators

     $ rails g nifty:scaffold UserRoleAcl user_id:User role_id:Role creator_id:User description:string

*    Add `acts_as_votable`: https://github.com/ryanto/acts_as_votable/blob/master/README.markdown

## SAMPLE TABLE

This explain what I mean in the above TODO :)
ACLS table would be the middle ground.

USERS:

    1: root
    2: rcarlesso
    3: fmattei

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

# Bugs

1. Mysql doesnt wanna go :/

    uninitialized constant Mysql2::Client::SECURE_CONNECTION (NameError)

https://github.com/brianmario/mysql2/issues/603

Testing locally:

    # removing all installations first...
    yes | gem uninstall mysql2 
    gem install mysql2 -v 0.3.18 -- --with-mysql-lib=/usr/lib/mysql


# Credits

Author: Riccardo Carlesso

Nifty stuff: thanks to Ryan Bates and DHH to make this fun possible!

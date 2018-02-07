#!/bin/bash

if [ -f config/database.riccardo.yml ] ; then
  cp config/database.riccardo.yml config/database.yml
fi

RAILS_ENV=production script/server
#bash
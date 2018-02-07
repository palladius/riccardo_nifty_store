# ruby187 taken from this recipe: 
FROM ruby-1.8.7 

COPY . /var/www/riccniftystore/

WORKDIR /var/www/riccniftystore/

#COPY config/database.riccardo.yml /var/www/riccniftystore/config/database.yml

RUN apt-get -y update
#not neeed: libmysql-ruby 
RUN apt-get -y install libgmp-dev git libmysqlclient-dev mysql-client
RUN rbenv local 1.8.7-p375

# These 2 are needed for Mysql2
RUN gem install mysql2 -v 0.3.18 --no-rdoc --no-ri -- --with-mysql-lib=/usr/lib/mysql
RUN gem install activerecord-mysql2-adapter

RUN gem install bundler -v 1.16.0 --no-rdoc --no-ri

# NOT NEEDED :)
#RUN /root/.rbenv/versions/1.8.7-p375/bin/bundle install
#RUN rake db:seed

EXPOSE 3000

CMD ["script/server", "-b", "0.0.0.0"]

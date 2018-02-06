# ruby187 taken from this recipe: 
FROM ruby-1.8.7 

COPY . /var/www/riccniftystore/

WORKDIR /var/www/riccniftystore/

RUN apt-get -y update
RUN apt-get -y install libgmp-dev git libmysqlclient-dev
#libmysql-ruby 
#libmysqlclient-dev 
# mysql-client
RUN rbenv local 1.8.7-p375
#RUN gem install mysql  --no-rdoc --no-ri
RUN gem install mysql2 -v 0.2.6 --no-rdoc --no-ri
RUN gem install bundler -v 1.16.0 --no-rdoc --no-ri

# NOT NEEDED :)
#RUN /root/.rbenv/versions/1.8.7-p375/bin/bundle install
#RUN rake db:seed

EXPOSE 3000

CMD ["script/server", "-b", "0.0.0.0"]

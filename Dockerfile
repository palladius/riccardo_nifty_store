# ruby187 taken from this recipe: 
FROM ruby-1.8.7 

COPY . /var/www/riccniftystore/

WORKDIR /var/www/riccniftystore/

RUN apt-get -y install libgmp-dev git
RUN rbenv local 1.8.7-p375
RUN gem install bundler -v 1.16.0 --no-rdoc --no-ri

#RUN /root/.rbenv/versions/1.8.7-p375/bin/bundle install

#RUN rake db:seed

EXPOSE 3000

CMD ["script/server", "-b", "0.0.0.0"]

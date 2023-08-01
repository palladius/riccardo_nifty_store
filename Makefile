
VERSION = $(shell cat VERSION)
APPNAME = ricniftystore
ENVIRONMENT = development

install:
	echo Beware this code is VERY old.
	rbenv install 1.8.7
	bundle install

build-local:
	bundle install

run-local: build
	script/server

run-local-prod: build
	RAILS_ENV=production script/server

tests:
	@echo "1. See Application-wise config version which shjould match ./VERSION"
	echo Configuration.app_version | script/console
	@echo "2. See users in the dev DB"
	echo 'User.all.map{|x| x.name}' | script/console
	@echo "3. See users in the prod DB"
	echo 'User.all.map{|x| x.name}' | RAILS_ENV=$(ENVIRONMENT) script/console

docker-build: build-docker
build-docker:
	docker build -t $(APPNAME) .

# run on port 3001 in env:dev
run-docker-local: build-docker
	@echo "Running locally on http://localhost:3001/ .."
	docker run -it -p 0.0.0.0:3001:3000 $(APPNAME) RAILS_ENV=development script/server
run-docker-prod: build-docker
	@echo "Running locally on http://localhost:3001/ .."
	docker run -it -p 0.0.0.0:3001:3000 $(APPNAME) bash run-prod.sh

run-docker-rake-tests:
	docker run -it -p 0.0.0.0:3001:3000 $(APPNAME) rake test

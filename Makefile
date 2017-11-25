
VERSION = $(shell cat VERSION)
APPNAME = ricniftystore

build:
	bundle install

run: build
	script/server

tests:
	@echo "1. See Application-wise config version which shjould match ./VERSION"
	echo Configuration.app_version | script/console

build-docker:
	docker build -t $(APPNAME) .

# run on port 3001 in env:dev
run-docker-local: build-docker
		docker run -it -p 0.0.0.0:3001:3000 $(APPNAME) script/server

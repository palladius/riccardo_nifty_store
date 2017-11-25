
build:
	bundle install

run: build
	script/server

tests:
	@echo "1. See Application-wise config version which shjould match ./VERSION"
	echo Configuration.app_version | script/console
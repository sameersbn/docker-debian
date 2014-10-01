all: build

build:
	@docker build --tag=${USER}/debian .

base:
	@docker pull debian:jessie

rebuild: base
	@docker build --tag=${USER}/debian .

release: rebuild
	@docker build --tag=${USER}/debian:jessie.$(shell date +%Y%m%d) .

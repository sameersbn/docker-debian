all: build

build:
	@docker build --tag=${USER}/debian .

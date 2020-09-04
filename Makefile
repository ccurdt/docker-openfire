all: build

build:
	@docker build --tag=ccurdt/openfire .
	@docker push ccurdt/openfire

release: build
	@docker build --tag=ccurdt/openfire:$(shell cat VERSION) .
	@docker push ccurdt/openfire:$(shell cat VERSION)

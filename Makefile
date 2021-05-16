GIT_BRANCH=$(shell git rev-parse --abbrev-ref HEAD)
GIT_HASH=$(shell git log -1 --format=%h)

build:
	docker build . -f Dockerfile -t pthomison/ansible:${GIT_HASH} -t pthomison/ansible:latest

shell: build
	docker run -it --rm --entrypoint="/bin/bash" pthomison/ansible:${GIT_HASH}
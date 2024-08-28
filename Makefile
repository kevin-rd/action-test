#!/usr/bin/make -f

REPOSITORY := $(secrets.DOCKER_REPOSITORY)
COMMIT_HASH := $(shell git rev-parse --short=7 HEAD)
DOCKER_TAG := $(COMMIT_HASH)

default_target: all

.PHONY: default_target

build:
	echo ${REPOSITORY}
	docker build -t mechain-test:${DOCKER_TAG} .
	docker images
	docker tag mechain-test:${DOCKER_TAG} kevin2025/mechain-test:${DOCKER_TAG}

docker-push:
	docker push kevin2025/mechain-test:${DOCKER_TAG}

all: build
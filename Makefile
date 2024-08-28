#!/usr/bin/make -f

REPOSITORY := $(DOCKER_REPOSITORY)


default_target: all

.PHONY: default_target

build-docker:
	echo ${REPOSITORY}


all: build-docker
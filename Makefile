#!/usr/bin/make -f

REPOSITORY := $(secrets.DOCKER_REPOSITORY)


default_target: all

.PHONY: default_target

build:
	echo ${REPOSITORY}


all: build
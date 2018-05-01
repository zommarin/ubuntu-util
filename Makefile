#
# Makefile for the ubuntu utility Docker image
#

DOCKER_REPOSITORY=zommarin
DOCKER_NAME=ubuntu-util
DOCKER_TAG=latest
DOCKER_IMAGE=$(DOCKER_REPOSITORY)/$(DOCKER_NAME):$(DOCKER_TAG)

.PHONY: build
build:
	docker build -t $(DOCKER_IMAGE) .

.PHONY: push
push: build
	docker push $(DOCKER_IMAGE)

.PHONY: run
run: build
	docker run -it $(DOCKER_IMAGE) bash

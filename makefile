IMAGE_NAME ?= terraspace
BUILD_ARGS ?=

.PHONY: build

build:
	docker buildx build -t $(IMAGE_NAME) $(BUILD_ARGS) .

.DEFAULT_GOAL := build

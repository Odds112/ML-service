IMAGE_NAME = ml-microservice
VERSION = $(shell git rev-parse --short HEAD || echo "latest")

build:
	docker build -t $(IMAGE_NAME):$(VERSION) .

push:
	docker tag $(IMAGE_NAME):$(VERSION) odds112/$(IMAGE_NAME):$(VERSION)
	docker push odds112/$(IMAGE_NAME):$(VERSION)

build-and-push: build push

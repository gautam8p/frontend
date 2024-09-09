# APP_VERSION ?= v0.1.0
# IMAGE_REGISTRY ?= quay.io/opstree
# IMAGE_NAME ?= frontend-app

APP_VERSION ?= 1.0
IMAGE_REGISTRY ?= us-central1-docker.pkg.dev/gowtham-demo-433405/frontend-reg
IMAGE_NAME ?= frontend-ms


install:
	npm install

build: install
	npm run build

docker-build:
	ddocker build -t ${IMAGE_REGISTRY}/${IMAGE_NAME}:${APP_VERSION} -f Dockerfile .

docker-push:
	docker push ${IMAGE_REGISTRY}/${IMAGE_NAME}:${APP_VERSION}


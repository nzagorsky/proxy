SERVICE_NAME=proxy
TAG=latest

build: dependencies
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o bin/app .
	docker build -t $(DOCKERHUB_USERNAME)/$(SERVICE_NAME):$(TAG) .

push_dockerhub: build
	docker login --username=$(DOCKERHUB_USERNAME)
	docker push $(DOCKERHUB_USERNAME)/$(SERVICE_NAME):$(TAG)

dependencies:
	go get .

test:
	go test -v

dev:
	modd --debug

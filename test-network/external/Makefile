.PHONY: build
build:
	docker build -f ./docker/Dockerfile -t chaincode:latest .

.PHONY: start
start:
	docker-compose -f ./docker/docker-compose.yaml up -d

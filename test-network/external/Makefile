.PHONY: build
build:
	docker build -f Dockerfile -t chaincode:1.2 .

.PHONY: start
start:
	docker-compose -f docker-compose.yaml up -d

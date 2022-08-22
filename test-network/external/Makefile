.PHONY: build
build:
	docker build -f Dockerfile -t chaincode:latest .

.PHONY: start
start:
	docker-compose -f docker-compose.yaml up -d

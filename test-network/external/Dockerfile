FROM golang:1.17-alpine AS builder

ENV GOPROXY=https://goproxy.cn,direct
ENV CGO_ENABLED=0

WORKDIR /go/src
ADD ./chaincode ./chaincode
RUN cd ./chaincode \
&& go mod tidy \
&& go build  -o /go/bin/chaincode main.go

FROM alpine AS ipfs
WORKDIR chaincode
COPY --from=builder /go/bin/chaincode chaincode
ENTRYPOINT [ "./chaincode"]

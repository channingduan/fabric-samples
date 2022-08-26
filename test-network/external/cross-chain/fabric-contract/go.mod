module github.com/polynetwork/fabric-contract

go 1.15

require (
	github.com/ethereum/go-ethereum v1.9.13
	github.com/golang/protobuf v1.5.2
	github.com/hyperledger/fabric-chaincode-go v0.0.0-20220720122508-9207360bbddd
	github.com/hyperledger/fabric-protos-go v0.0.0-20220613214546-bf864f01d75e
	github.com/pkg/errors v0.9.1
	github.com/polynetwork/poly v0.0.0-20201022033008-b0240c68a6bc
	github.com/tjfoc/gmtls v0.0.0-00010101000000-000000000000 // indirect
)

replace (
	github.com/hyperledger/fabric-chaincode-go => ./fabric-chaincode-go
	github.com/tjfoc/gmsm => ./tjfoc/gmsm
	github.com/tjfoc/gmtls => ./tjfoc/gmtls
)

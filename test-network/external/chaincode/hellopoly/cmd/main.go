package main

import (
	"fmt"
	"hellopoly"
	"os"
	"strconv"

	"github.com/hyperledger/fabric-chaincode-go/shim"
)

func main() {

	// 外部链码
	tls, _ := strconv.ParseBool(os.Getenv("TLS"))
	server := &shim.ChaincodeServer{
		CCID:    os.Getenv("CHAINCODE_CCID"),
		Address: os.Getenv("CHAINCODE_ADDRESS"),
		CC:      new(hellopoly.HelloPoly),
		TLSProps: shim.TLSProperties{
			Disabled: tls,
		},
	}
	err := server.Start()
	if err != nil {
		fmt.Printf("Error starting Simple chaincode: %s", err)
	}

	// err := shim.Start(new(hellopoly.HelloPoly))
	// if err != nil {
	// 	fmt.Printf("Error starting bcccode: %s", err)
	// }
}

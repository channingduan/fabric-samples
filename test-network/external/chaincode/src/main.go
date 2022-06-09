package main

// 外部链码实例
import (
	"fmt"
	"os"
	"strconv"

	"github.com/hyperledger/fabric-chaincode-go/shim"
	pb "github.com/hyperledger/fabric-protos-go/peer"
)

type SimpleChiancode struct {
}

func (s *SimpleChiancode) Init(ctx shim.ChaincodeStubInterface) pb.Response {
	return shim.Success(nil)
}

func (s *SimpleChiancode) Invoke(ctx shim.ChaincodeStubInterface) pb.Response {
	fmt.Println("hello world")

	fun, args := ctx.GetFunctionAndParameters()
	switch fun {
	case "Create":
		if err := s.Create(ctx, args[0], args[1]); err != nil {
			return shim.Error(err.Error())
		}
		return shim.Success([]byte("success"))
	case "Read":
		str, err := s.Read(ctx, args[0])
		if err != nil {
			return shim.Error(err.Error())
		}
		return shim.Success([]byte(str))
	default:
		shim.Success([]byte("invoke"))
	}

	return shim.Error("invalid function name")
}

func (s *SimpleChiancode) Create(ctx shim.ChaincodeStubInterface, id, val string) error {
	return ctx.PutState(id, []byte(val))
}

func (s *SimpleChiancode) Read(ctx shim.ChaincodeStubInterface, id string) (string, error) {

	res, err := ctx.GetState(id)

	return string(res), err
}

func main() {
	tls, _ := strconv.ParseBool(os.Getenv("TLS"))
	// 将链码作为外部服务的关键
	server := &shim.ChaincodeServer{
		CCID:    os.Getenv("CHAINCODE_CCID"),
		Address: os.Getenv("CHAINCODE_ADDRESS"),
		CC:      new(SimpleChiancode),
		TLSProps: shim.TLSProperties{
			Disabled: tls,
		},
	}
	err := server.Start()
	if err != nil {
		fmt.Printf("Error starting Simple chaincode: %s", err)
	}

}

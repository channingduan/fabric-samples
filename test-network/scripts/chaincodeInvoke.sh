peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n poly --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["send", "8","0300000000000000000000000000000000000000","set","123"]}'

# peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n target1 --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["set", "target1"]}'

sleep 3

peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel1 -n target01 --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["get", "FABRIC_CROSS_CHAIN"]}'


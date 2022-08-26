#!/usr/bin/env sh
 
peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n ccm --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} --isInit -c '{"Args":["8"]}'
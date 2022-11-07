#!/usr/bin/env bash

set -x

# peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n poly --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["hello", "1001","4dba47809c531e691185904d87718b35dd6cbd71","onCrossReply","---1001"]}'

d=`date +"%Y-%m-%d %H:%M.%S"`
echo $d
# sleep 1

peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n poly --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["hello", "1001","---1001--'+$d+'"]}'

sleep 1

peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n poly --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["hello", "1001","---2002--'+$d+'"]}'


#0x05c80c080c32d64b1a75ea5bf6b4832bab2d234a
#100->6219a724ca363cfa063d5426bde152b60d9e788d
#200->bcd1eb99f4fbd99e1e665f3e53c1c2c61d7bfa67
#1001->4dba47809c531e691185904d87718b35dd6cbd71
#2002->fab61704c5e702e59aa413328c69391b18122f16
# peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n poly --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["set", "poly111ccc"]}'

# sleep 3

# peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n poly --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["get", "FABRIC_CROSS_CHAIN"]}'

# peer chaincode query -C mychannel -n poly -c '{"Args":["getMessage"]}'
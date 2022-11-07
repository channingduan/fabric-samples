#!/usr/bin/env bash

set -x

#1001->4dba47809c531e691185904d87718b35dd6cbd71
#2002->fab61704c5e702e59aa413328c69391b18122f16


peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n poly --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["bindProxyHash", "1001","4dba47809c531e691185904d87718b35dd6cbd71"]}'

sleep 1

peer chaincode query -C mychannel -n poly -c '{"Args":{"proxyHashMap", "1001"}}'

sleep 1

peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n poly --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["bindProxyHash", "2002","fab61704c5e702e59aa413328c69391b18122f16"]}'

sleep 1

peer chaincode query -C mychannel -n poly -c '{"Args":{"proxyHashMap", "2002"}}'
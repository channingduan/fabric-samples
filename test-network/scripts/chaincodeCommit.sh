#!/usr/bin/env sh

peer lifecycle chaincode commit -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} --channelID mychannel1 --name ccm3 --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} --version 1.0 --sequence 1 --init-required
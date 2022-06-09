#!/bin/sh

peer lifecycle chaincode queryinstalled --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE}
#!/bin/sh
set -x
. scripts/orderer.sh
CHANNELID=$1

peer channel fetch config channel-artifacts/latest_config.block -o orderer.example.com:7050 -c $CHANNELID --tls --cafile /Volumes/data/project/golang/blockchain/hyperledger/fabric-samples/test-network/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
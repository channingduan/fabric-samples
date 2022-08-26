#!/usr/bin/env sh

peer lifecycle chaincode checkcommitreadiness -o orderer.example.com:7050 --channelID mychannel --tls --cafile $ORDERER_CA --name ccm --version 1.0 --init-required --sequence 1 --output json
#!/usr/bin/env sh

peer lifecycle chaincode approveformyorg --tls true --cafile ${ORDERER_CA} --channelID mychannel --name ccm --version 1.0 --init-required --package-id ccm:9394ffa1c616986c7fbdec593dc7c8e986720a127036aa6df4233d2029bbc827 --sequence 1 --waitForEvent
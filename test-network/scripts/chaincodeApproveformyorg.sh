#!/usr/bin/env sh

peer lifecycle chaincode approveformyorg --tls true --cafile ${ORDERER_CA} --channelID mychannel --name ccm --version 1.0 --init-required --package-id ccm_1.0:96bba51f87d70b9a9d4030aa10f1cf6a7aee9882403080c67c9a80a0d5c0da91 --sequence 1 --waitForEvent
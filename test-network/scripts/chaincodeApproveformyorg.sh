#!/usr/bin/env sh

peer lifecycle chaincode approveformyorg --tls true --cafile ${ORDERER_CA} --channelID mychannel --name ccm --version 1.0 --init-required --package-id ccm_1.0:40553a67e7fa06107c9a1901080519f92a2cd890c9aca3207910b0311e2a35c2 --sequence 1 --waitForEvent
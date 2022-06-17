#!/usr/bin/env sh

peer lifecycle chaincode approveformyorg --tls true --cafile ${ORDERER_CA} --channelID mychannel --name poly --version 1.0 --package-id poly:4cde7faf7996d9524bfcb5f394a2a5b8b697732de31068c5a7027af33d9fd4b3 --sequence 1 --waitForEvent
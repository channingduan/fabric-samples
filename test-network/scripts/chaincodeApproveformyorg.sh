#!/usr/bin/env sh

peer lifecycle chaincode approveformyorg --tls true --cafile ${ORDERER_CA} --channelID mychannel1 --name ccm3 --version 1.0 --init-required --package-id ccm3_1.0:edf91a7969f49e4999277722418dc9ddadee433d21f1e6784506b7ca9519439f --sequence 1 --waitForEvent
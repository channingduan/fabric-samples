#!/usr/bin/env bash

set -x

peer chaincode query -C mychannel -n poly -c '{"Args":["getMessage"]}'

# peer chaincode query -C mychannel -n poly -c '{"Args":["managerProxyContract"]}'

# peer chaincode query -C mychannel -n poly -c '{"Args":["proxyHashMap", "1001"]}'

# peer chaincode query -C mychannel -n poly -c '{"Args":["proxyHashMap", "2002"]}'
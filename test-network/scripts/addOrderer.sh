#!/bin/sh
set -x
export PATH=${PWD}/../bin:$PATH

cryptogen extend --input="organizations" --config=organizations/cryptogen/crypto-config-orderer.yaml
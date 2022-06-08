#!/bin/sh
export PATH=${PWD}/../bin:$PATH
export FABRIC_CFG_PATH=$PWD/configtx/

CHANNEL_NAME="$1"

createChannelTx() {
	set -x
	configtxgen -profile TwoOrgsChannel -outputCreateChannelTx ./channel-artifacts/${CHANNEL_NAME}.tx -channelID $CHANNEL_NAME
	res=$?
	{ set +x; } 2>/dev/null
}

createChannelTx
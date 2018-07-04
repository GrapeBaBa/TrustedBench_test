#!/usr/bin/env bash
$GOPATH/src/github.com/hyperledger/fabric/build/bin/cryptogen generate --config=./crypto-config.yaml
$GOPATH/src/github.com/hyperledger/fabric/build/bin/configtxgen -profile TwoOrgsOrdererGenesis -outputBlock twoorgs.genesis.block
$GOPATH/src/github.com/hyperledger/fabric/build/bin/configtxgen -profile TwoOrgsChannel -outputCreateChannelTx mychannel.tx -channelID mychannel
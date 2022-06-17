 #!/usr/bin/env sh

peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel1 -n ccm3 --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["initGenesisBlock", "000000000700000000000000000000000000000000000000000000000000000000000000000000000000000064ef765ccfa2623fd53d7aac835b9b1acf41f2829d226809b64c2da567570d2500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e305f000000001dac2b7c00000000fdb2037b226c6561646572223a343239343936373239352c227672665f76616c7565223a22484a675171706769355248566745716354626e6443456c384d516837446172364e4e646f6f79553051666f67555634764d50675851524171384d6f38373853426a2b38577262676c2b36714d7258686b667a72375751343d222c227672665f70726f6f66223a22785864422b5451454c4c6a59734965305378596474572f442f39542f746e5854624e436667354e62364650596370382f55706a524c572f536a5558643552576b75646632646f4c5267727052474b76305566385a69413d3d222c226c6173745f636f6e6669675f626c6f636b5f6e756d223a343239343936373239352c226e65775f636861696e5f636f6e666967223a7b2276657273696f6e223a312c2276696577223a312c226e223a342c2263223a312c22626c6f636b5f6d73675f64656c6179223a31303030303030303030302c22686173685f6d73675f64656c6179223a31303030303030303030302c22706565725f68616e647368616b655f74696d656f7574223a31303030303030303030302c227065657273223a5b7b22696e646578223a312c226964223a2231323035303337306232393731636433363637386361643935613835666334363130396534313231303234333761636164636163326366623833373366353865326363343636227d2c7b22696e646578223a322c226964223a2231323035303263643362616332303132633932336663656561353363303635313930613464393437323961656665623332623436643736323130643837323834326466613730227d2c7b22696e646578223a332c226964223a2231323035303238646664623330656666396639636561656334386363366135316434343934613461356436623961383961386130333832323337303031653966663736656538227d2c7b22696e646578223a342c226964223a2231323035303230663461306462333464646363643535366566353835383931383530303430356662333338383138663734653662646562313835373865363461363839646532227d5d2c22706f735f7461626c65223a5b312c332c322c332c342c342c312c322c342c332c342c322c322c342c322c332c342c312c342c332c332c322c342c342c312c342c332c322c312c342c342c322c342c342c312c312c332c312c322c322c332c322c312c332c312c312c332c322c312c342c312c332c322c322c312c332c332c312c322c335d2c226d61785f626c6f636b5f6368616e67655f76696577223a36303030307d7d6e0b8a431e9f8bf014a3d4e7ebbcf0ff09de74200000"]}'


# peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n ccm1 --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["changeBookKeeper", "000000000700000000000000000000000000000000000000000000000000000000000000000000000000000064ef765ccfa2623fd53d7aac835b9b1acf41f2829d226809b64c2da567570d2500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008e305f000000001dac2b7c00000000fdb2037b226c6561646572223a343239343936373239352c227672665f76616c7565223a22484a675171706769355248566745716354626e6443456c384d516837446172364e4e646f6f79553051666f67555634764d50675851524171384d6f38373853426a2b38577262676c2b36714d7258686b667a72375751343d222c227672665f70726f6f66223a22785864422b5451454c4c6a59734965305378596474572f442f39542f746e5854624e436667354e62364650596370382f55706a524c572f536a5558643552576b75646632646f4c5267727052474b76305566385a69413d3d222c226c6173745f636f6e6669675f626c6f636b5f6e756d223a343239343936373239352c226e65775f636861696e5f636f6e666967223a7b2276657273696f6e223a312c2276696577223a312c226e223a342c2263223a312c22626c6f636b5f6d73675f64656c6179223a31303030303030303030302c22686173685f6d73675f64656c6179223a31303030303030303030302c22706565725f68616e647368616b655f74696d656f7574223a31303030303030303030302c227065657273223a5b7b22696e646578223a312c226964223a2231323035303337306232393731636433363637386361643935613835666334363130396534313231303234333761636164636163326366623833373366353865326363343636227d2c7b22696e646578223a322c226964223a2231323035303263643362616332303132633932336663656561353363303635313930613464393437323961656665623332623436643736323130643837323834326466613730227d2c7b22696e646578223a332c226964223a2231323035303238646664623330656666396639636561656334386363366135316434343934613461356436623961383961386130333832323337303031653966663736656538227d2c7b22696e646578223a342c226964223a2231323035303230663461306462333464646363643535366566353835383931383530303430356662333338383138663734653662646562313835373865363461363839646532227d5d2c22706f735f7461626c65223a5b312c332c322c332c342c342c312c322c342c332c342c322c322c342c322c332c342c312c342c332c332c322c342c342c312c342c332c322c312c342c342c322c342c342c312c312c332c312c322c322c332c322c312c332c312c312c332c322c312c342c312c332c322c322c312c332c332c312c322c335d2c226d61785f626c6f636b5f6368616e67655f76696577223a36303030307d7d6e0b8a431e9f8bf014a3d4e7ebbcf0ff09de74200000"]}'

#  peer chaincode invoke -o orderer.example.com:7050 --tls true --cafile ${ORDERER_CA} -C mychannel -n ccm1 --peerAddresses peer0.org1.example.com:7051 --tlsRootCertFiles ${ORG1_TLS_ROOT_CERT_FILE} --peerAddresses peer0.org2.example.com:9051 --tlsRootCertFiles ${ORG2_TLS_ROOT_CERT_FILE} -c '{"Args":["getPolyEpochHeight"]}'



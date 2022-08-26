#!/usr/bin/env bash
tar zcvf code.tar.gz connection.json
tar zcvf ccm.tar.gz code.tar.gz metadata.json
mv ccm.tar.gz ../
rm ./code.tar.gz
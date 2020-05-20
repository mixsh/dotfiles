#!/bin/bash

pushd /opt/Citrix/ICAClient/keystore/cacerts
wget https://entrust.com/root-certificates/entrust_l1k.cer
popd

#!/usr/bin/env bash

set -e -u

LUX_VERSION="0.12.0"
LUX_BINARY_URL="https://github.com/iawia002/lux/releases/download/v${LUX_VERSION}/lux_${LUX_VERSION}_Linux_64-bit.tar.gz"
LUX_BINARY_DEST="lux-v${LUX_VERSION}.tar.gz"

wget -O ${LUX_BINARY_DEST} ${LUX_BINARY_URL}
tar -zxf ${LUX_BINARY_DEST}

mv lux /usr/bin
rm -f ${LUX_BINARY_DEST}

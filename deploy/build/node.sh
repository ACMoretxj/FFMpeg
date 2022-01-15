#!/usr/bin/env bash

set -e -u

NODE_VERSION="16.13"
NODE_BINARY_URL="https://nodejs.org/dist/v${NODE_VERSION}.1/node-v${NODE_VERSION}.1-linux-x64.tar.xz"
NODE_BINARY_DEST="node-v${NODE_VERSION}.tar.xz"
NODE_HOME="/opt/node/"

# clear history
rm -rf ${NODE_HOME}
mkdir -p ${NODE_HOME}

# download and install
wget -O ${NODE_BINARY_DEST} ${NODE_BINARY_URL}
tar -xf ${NODE_BINARY_DEST} -C ${NODE_HOME} --strip-components=1
rm ${NODE_BINARY_DEST}

ln -sf ${NODE_HOME}/bin/node /usr/bin/node
ln -sf ${NODE_HOME}/bin/npm /usr/bin/npm

npm install -g heic-cli

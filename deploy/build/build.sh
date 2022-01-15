#!/usr/bin/env bash

set -e -u

BUILD_FOLDER=$(dirname $(readlink -f "$0"))

# install necessary packages
apt update
apt install vim-tiny xz-utils -y

# install other runtimes and tools
bash ${BUILD_FOLDER}/node.sh
bash ${BUILD_FOLDER}/lux.sh

# Clean unused packages and building root.
apt autoremove -y
rm -rf ${PWD}

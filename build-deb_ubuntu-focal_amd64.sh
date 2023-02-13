#!/bin/bash
dir=$(dirname "$0")
echo "OUTPUT_DIR=$(pwd)/dist" >>  $GITHUB_ENV

./set-ubuntu-focal.sh
./set-raven-platform-amd64.sh
./set-raven-version-env.sh

./build-deb.sh

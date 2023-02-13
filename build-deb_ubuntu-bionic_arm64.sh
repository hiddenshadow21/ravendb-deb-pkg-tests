#!/bin/bash -x
echo "DISTRO_NAME=ubuntu" >>  $GITHUB_ENV
echo "DISTRO_VERSION=18.04" >>  $GITHUB_ENV
echo "DISTRO_VERSION_NAME=bionic" >>  $GITHUB_ENV

dir=$(dirname "$0")
echo "OUTPUT_DIR=$(pwd)/dist" >>  $GITHUB_ENV

./set-raven-platform-arm64.sh
./set-raven-version-env.sh

./build-deb.sh
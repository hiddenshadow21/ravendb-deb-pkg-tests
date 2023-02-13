#!/bin/bash

./set-ubuntu-"${DISTRO_VERSION_NAME}".sh
./set-raven-version-env.sh

./test-deb-vagrant.sh

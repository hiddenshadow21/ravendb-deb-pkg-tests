#!/bin/bash -ex

export _DEB_DEBUG=debug
package=$(find ./dist/$DISTRO_VERSION -iname 'ravendb_*')
sudo apt-get update
sudo su << ROOT
    source $GITHUB_ENV
    source ./assets/test.sh
    test_package_systemd "$package" || exit 1
ROOT
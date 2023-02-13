#!/bin/bash -e
# start a vagrant vm
# install deb
# verify it starts as expected (setup mode etc.)
# remove (check if data and cert are left intact)
# purge (check if everything is gone - service, data, security)


if [[ -z $OUTPUT_DIR ]]; then 
    echo "OUTPUT_DIR=$(pwd)/dist" >>  $GITHUB_ENV
fi

echo "Test RavenDB $RAVENDB_VERSION on Vagrant, $DISTRO_NAME $DISTRO_VERSION"

echo "PKG_OUTPUT_DIR=$OUTPUT_DIR/$DISTRO_VERSION" >>  $GITHUB_ENV

source $GITHUB_ENV
pushd "./vagrant/$DISTRO_VERSION_NAME"

set +e
vagrant up --provider=hyperv
set -e

popd
#!/bin/bash

echo "RAVEN_PLATFORM=linux-x64" >>  $GITHUB_ENV
echo "DOCKER_BUILDPLATFORM=linux/amd64" >>  $GITHUB_ENV
echo "DEB_ARCHITECTURE=amd64" >>  $GITHUB_ENV
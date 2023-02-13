#!/bin/bash
echo "RAVEN_PLATFORM=raspberry-pi" >>  $GITHUB_ENV
echo "DOCKER_BUILDPLATFORM=linux/arm/v7" >>  $GITHUB_ENV
echo "DEB_ARCHITECTURE=armhf" >>  $GITHUB_ENV
echo "QEMU_ARCH=arm" >>  $GITHUB_ENV

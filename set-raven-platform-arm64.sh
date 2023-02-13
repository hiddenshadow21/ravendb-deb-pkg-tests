#!/bin/bash
echo "RAVEN_PLATFORM=linux-arm64" >>  $GITHUB_ENV
echo "DOCKER_BUILDPLATFORM=linux/arm64" >>  $GITHUB_ENV
echo "DEB_ARCHITECTURE=arm64" >>  $GITHUB_ENV
echo "QEMU_ARCH=aarch64" >>  $GITHUB_ENV

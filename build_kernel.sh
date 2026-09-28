#!/bin/bash

set -euo pipefail

cd "$(dirname "$0")"

export PLATFORM_VERSION=11
export ANDROID_MAJOR_VERSION=r
export ARCH=arm64
export CROSS_COMPILE="${CROSS_COMPILE:-/home/msstore/Desktop/toolchain/bin/aarch64-linux-android-}"

make ARCH="$ARCH" CROSS_COMPILE="$CROSS_COMPILE" exynos7885-gta3xl_defconfig
make ARCH="$ARCH" CROSS_COMPILE="$CROSS_COMPILE" -j"${JOBS:-$(nproc)}"

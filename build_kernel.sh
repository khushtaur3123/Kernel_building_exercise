#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=../toolchain/bin/aarch64-linux-android-
export PATH=../clang/bin/clang:$PATH
export ANDROID_MAJOR_VERSION=q

make exynos7885-a7y18lte_defconfig
make

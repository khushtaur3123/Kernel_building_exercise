#!/bin/bash

export PATH="$HOME/proton-clang/bin:$PATH"
 
export ARCH=arm64
export CC=clang
export CROSS_COMPILE=aarch64-linux-gnu-
export ANDROID_MAJOR_VERSION=q
export PLATFORM_VERSION=10


make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y exynos7885-a7y18lte_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y

make -j8

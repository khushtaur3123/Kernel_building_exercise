#!/bin/bash

make clean && make mrproper 
export ANDROID_MAJOR_VERSION=q
export ARCH=arm64
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y exynos7885-a7y18lte_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j64
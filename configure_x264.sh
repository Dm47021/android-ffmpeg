#!/bin/bash
pushd `dirname $0`
. settings.sh

pushd x264

./configure --cross-prefix=$NDK_TOOLCHAIN_BASE/bin/arm-linux-androideabi- \
--sysroot="$NDK_SYSROOT" \
--host=arm-linux \
--extra-cflags="-march=armv7-a -mcpu=cortex-a8 -mfloat-abi=softfp -mfpu=neon" \
--extra-ldflags="-Wl,--fix-cortex-a8" \
--enable-pic \
--enable-static \
--disable-cli

popd;popd

#!/usr/bin/env bash
# configure xNVMe and build dependencies (fio, liburing, and SPDK)
meson setup builddir

# build xNVMe
meson compile -C builddir

# install xNVMe
sudo meson install -C builddir

# uninstall xNVMe
# cd builddir && meson --internal uninstall

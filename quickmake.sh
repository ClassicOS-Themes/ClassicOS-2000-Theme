#!/bin/sh

rm -rf ./build98
rm -rf ./build2000

meson build2000
meson -Dstandard_colors=false build98

ninja -C build2000 && ninja -C build2000 install
ninja -C build98 && ninja -C build98 install


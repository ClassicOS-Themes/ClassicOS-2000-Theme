#!/bin/bash
# Makes all colorschemes defined in ./shemes
# installs to ~/.local/share/themes


source schemes
echo "${schemes[@]}"
a=(foo bar doo)
b=(123 456 789)
i=0
while [ "$i" -lt "${#schemes[@]}" ]; do
lighttheme="${schemes[i]}"
    i=$((i+1))
darktheme="${schemes[i]}"
    i=$((i+1))
name="${schemes[i]}"
    i=$((i+1))
    echo "$lighttheme $darktheme $name" 
    rm -rf ./builddir
    meson -Dcolorscheme="$lighttheme" -Ddark_colorscheme="$darktheme" -Dtheme_name="ClassicOS$name" --prefix=$HOME/.local builddir
    ninja -C builddir && ninja -C builddir install
done
exit

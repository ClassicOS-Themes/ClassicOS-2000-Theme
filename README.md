# ClassicOS 2000 Theme

A theme that tries to faithfully reproduce the classic look of PC operating systems at the turn of the millenium.

Includes a wide range of color schemes, some including a dark mode.

Currently this is only a GTK 3 theme. You'll need to find your own window manager, gtk2, qt, etc... themes.

Pairs well with the accompanying scalable icon theme found at https://github.com/ClassicOS-Themes/ClassicOS-2000-Icons, and the Tahoma font family.

## Screenshots

(coming soon)

## Installation

Build Dependencies: `sassc` and `meson`

For Arch Linux Users, a PKGBUILD file exists at https://github.com/ClassicOS-Themes/ClassicOS-2000-Theme-PKGBUILD

### Build and Install ###

By default, builds the ClassicOS2000 theme. Add `-Dstandard_colors=false` to meson's arguments to build the ClassicOS98 theme.

#### Local (User) Install ####
```
meson --prefix=$HOME/.local builddir
ninja -C builddir
ninja -C builddir install
```

#### System Install ####

```
meson builddir
ninja -C builddir
ninja -C install
```
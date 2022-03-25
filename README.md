# ClassicOS 2000 Theme

A theme that tries to faithfully reproduce the classic look of PC operating systems at the turn of the millenium.

Includes a wide range of color schemes, some including a dark mode.

Currently this is only a GTK 2/3 theme (GTK 4 Support coming soon - some bugs need to be squashed first). You'll need to find your own widow manager theme.

Pairs well with the accompanying scalable icon theme found at https://github.com/ClassicOS-Themes/ClassicOS-2000-Icons, and the Tahoma font family.

## Screenshots

 - [Applications](screenshots/applications/README.md)
 - [Colorscheme Gallery](screenshots/colorschemes/README.md)

## Installation

Build Dependencies: `sassc` and `meson`

For Arch Linux Users, a PKGBUILD file exists at https://github.com/ClassicOS-Themes/ClassicOS-2000-Theme-PKGBUILD

By default, meson builds the ClassicOS2000 theme with the "Standard" color scheme.

### Local (User) Install ####
```
meson --prefix=$HOME/.local builddir
ninja -C builddir
ninja -C builddir install
```

### System Install ####

```
meson builddir
ninja -C builddir
ninja -C builddir install
```

### Building other colorschemes

The Following commands will build and install the "Spruce" colorscheme to ~/.local/share/themes

```
meson -Dcolorscheme="spruce" -Ddark_colorscheme="spruce_dark" -Dtheme_name="ClassicOS2000-Spruce" --prefix=$HOME/.local builddir
ninja -C builddir
ninja -C builddir install
```

The Following commands will build and install the "98 Default" colorscheme to ~/.local/share/themes:

```
meson -Dcolorscheme="98/default" -Ddark_colorscheme="98/dark_mode_blue" -Dtheme_name="ClassicOS98" --prefix=$HOME/.local builddir
ninja -C builddir
ninja -C builddir install
```

### quickbuild.sh

Running `quickbuild.sh` will compile all the colorschemes and install them to `~/.local/share/themes`.

## License

Dual Licensed: GPL-2.0+ or MIT
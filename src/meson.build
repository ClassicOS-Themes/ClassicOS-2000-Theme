theme_path = join_paths(get_option('datadir'), 'themes/ClassicOS2000')
ninetyeight_theme_path = join_paths(get_option('datadir'), 'themes/ClassicOS98')

scss_files = files([
    'gtk-3.0/_colors-classic.scss',
    'gtk-3.0/_colors-standard.scss',
    'gtk-3.0/_colors-public.scss',
    'gtk-3.0/_drawing.scss',
    'gtk-3.0/_shadow.scss',
    'gtk-3.0/widgets/_buttons.scss',
    'gtk-3.0/widgets/_checkbox_radiobutton.scss',
    'gtk-3.0/widgets/_containers.scss',
    'gtk-3.0/widgets/_entry_combobox.scss',
    'gtk-3.0/widgets/_expander.scss',
    'gtk-3.0/widgets/_headerbar.scss',
    'gtk-3.0/widgets/_menus.scss',
    'gtk-3.0/widgets/_notebook.scss',
    'gtk-3.0/widgets/_popover.scss',
    'gtk-3.0/widgets/_progress_level_bar.scss',
    'gtk-3.0/widgets/_scale.scss',
    'gtk-3.0/widgets/_scrollbar.scss',
    'gtk-3.0/widgets/_separator.scss',
    'gtk-3.0/widgets/_spinbutton.scss',
    'gtk-3.0/widgets/_switch.scss',
    'gtk-3.0/widgets/_toolbar.scss',
    'gtk-3.0/widgets/_view.scss',
    'gtk-3.0/widgets/_widget.scss',
    'gtk-3.0/apps/_libhandy.scss',
    'gtk-3.0/apps/_nemo.scss',
    'gtk-3.0/apps/_xfce.scss',
    'gtk-3.0/_theme.scss',
])


if(get_option('standard_colors')) 
    theme_deps += custom_target('ClassicOS2000',
                                input: 'gtk-3.0/classicos2000.scss',
                                output: 'gtk.css',
                                command: [
                                    sassc, sassc_opts, '@INPUT@', '@OUTPUT@'
                                ],
                                depend_files: scss_files,
                                build_by_default: true,
                                install: true,
                                install_dir: join_paths(theme_path, 'gtk-3.0'))

    theme_deps += custom_target('ClassicOS2000-Dark',
                                input: 'gtk-3.0/classicos2000-dark.scss',
                                output: 'gtk-dark.css',
                                command: [
                                    sassc, sassc_opts, '@INPUT@', '@OUTPUT@'
                                ],
                                depend_files: scss_files,
                                build_by_default: true,
                                install: true,
                                install_dir: join_paths(theme_path, 'gtk-3.0'))
    install_subdir('gtk-3.0/assets', install_dir: theme_path / 'gtk-3.0')
else
    theme_deps += custom_target('ClassicOS98',
                                input: 'gtk-3.0/classicos98.scss',
                                output: 'gtk.css',
                                command: [
                                    sassc, sassc_opts, '@INPUT@', '@OUTPUT@'
                                ],
                                depend_files: scss_files,
                                build_by_default: true,
                                install: true,
                                install_dir: join_paths(ninetyeight_theme_path, 'gtk-3.0'))

    theme_deps += custom_target('ClassicOS98-Dark',
                                input: 'gtk-3.0/classicos98-dark.scss',
                                output: 'gtk-dark.css',
                                command: [
                                    sassc, sassc_opts, '@INPUT@', '@OUTPUT@'
                                ],
                                depend_files: scss_files,
                                build_by_default: true,
                                install: true,
                                install_dir: join_paths(ninetyeight_theme_path, 'gtk-3.0'))
    install_subdir('gtk-3.0/assets', install_dir: ninetyeight_theme_path / 'gtk-3.0')
endif
#subdir('gtk-3.0')
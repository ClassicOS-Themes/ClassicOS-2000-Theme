#gtk_light_gresources = gnome.compile_resources('gtk', 'gtk.gresource.xml',
#                                         source_dir: join_paths(meson.source_root(), 'gtk-4.0'),
#                                         install: true,
#                                         gresource_bundle: true,
#                                         install_dir: join_paths(theme_path, 'gtk-4.0'))


conf_data = configuration_data()
conf_data.set('colorscheme',  colorscheme)
conf_data.set('colorscheme_dark', dark_colorscheme)
configure_file(input : '_config.scss.in',
               output : '_config.scss',
               configuration : conf_data)
configure_file(input : '_config_dark.scss.in',
               output : '_config_dark.scss',
               configuration : conf_data)



colorscheme_dir_build = meson.current_source_dir()
scss_files = files([
    '_theme.scss',
])
theme_deps += custom_target(theme_name,
                            input: 'classicos2000.scss',
                            output: 'gtk.css',
                            command: [
                                sassc,  sassc_opts, '-I', colorscheme_dir_build, '-I', './src/gtk-4.0', '@INPUT@', '@OUTPUT@'
                            ],
                            depend_files: scss_files,
                            build_by_default: true,
                            install: true,
                            install_dir: join_paths(theme_path, 'gtk-4.0'))

theme_deps += custom_target(theme_name_dark,
                            input: 'classicos2000-dark.scss',
                            output: 'gtk-dark.css',
                            command: [
                                sassc, sassc_opts, '-I', colorscheme_dir_build,  '-I', './src/gtk-4.0' , '@INPUT@', '@OUTPUT@'
                            ],
                            depend_files: scss_files,
                            build_by_default: true,
                            install: true,
                            install_dir: join_paths(theme_path, 'gtk-4.0'))
install_subdir('assets', install_dir: theme_path / 'gtk-4.0')


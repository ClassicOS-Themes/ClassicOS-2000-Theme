
theme_name = get_option('theme_name')
colorscheme = get_option('colorscheme')
dark_colorscheme = get_option('dark_colorscheme')
themes_dir = join_paths(get_option('datadir'),'themes')
theme_path = join_paths(themes_dir, theme_name)
theme_name_dark = theme_name+'-Dark'


#glib_compile_resources = find_program('glib-compile-resources', required: true)


# Colorschemes


colorscheme_fname = '_' + colorscheme + '.scss'
dark_colorscheme_fname = '_' + dark_colorscheme + '.scss'
# colorscheme_path = 'gtk-3.0/colorschemes/'+colorscheme_fname
# dark_colorscheme_path = 'gtk-3.0/colorschemes/'+dark_colorscheme_fname



install_subdir('gtk-2.0', install_dir: theme_path)
subdir('gtk-3.0')

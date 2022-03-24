fs=import('fs')
theme_name = get_option('theme_name')
colorscheme = get_option('colorscheme')
dark_colorscheme = get_option('dark_colorscheme')
themes_dir = join_paths(get_option('datadir'),'themes')
theme_path = join_paths(themes_dir, theme_name)
theme_name_dark = theme_name+'-Dark'
theme_path_dark = join_paths(themes_dir, theme_name)
colorscheme_dark = dark_colorscheme
#glib_compile_resources = find_program('glib-compile-resources', required: true)


# Colorschemes
# fix paths for meson
colorscheme_prefix = ''
colorscheme_base = ''
if colorscheme.startswith('98/') 
  colorscheme_prefix = '98/'
  colorscheme_base = '_' + colorscheme.substring(3) + '.scss'
else
colorscheme_base = '_'+colorscheme+'.scss'
endif
colorscheme_dark_prefix = ''
colorscheme_dark_base = ''
if colorscheme_dark.startswith('98/') 
  colorscheme_dark_prefix = '98/'
  colorscheme_dark_base = '_' + colorscheme_dark.substring(3) + '.scss'
else
colorscheme_dark_base = '_' + colorscheme_dark + '.scss'
endif

colorscheme_fname = colorscheme_prefix + colorscheme_base
dark_colorscheme_fname = colorscheme_dark_prefix + colorscheme_dark_base
colorscheme_path = 'gtk-3.0/colorschemes/'+colorscheme_fname
dark_colorscheme_path = 'gtk-3.0/colorschemes/'+dark_colorscheme_fname

# Here the SCSS file of the current colorscheme is read and
# then parsed into configuration data that can then be used 
# to alter the GTK2 theme, and eventually other non-scss bits
light_config = configuration_data()
dark_config = configuration_data()

# Light Scheme
scss_colorscheme = fs.read(colorscheme_path)
scss_colorscheme_lines = scss_colorscheme.split('\n')

foreach l : scss_colorscheme_lines
    if (l.strip().startswith('$'))
        light_config.set(
            l.substring(1,-8).strip(': \t'), 
            l.strip('; \t').substring(-7)
        )
    endif
endforeach
# Dark Scheme
scss_colorscheme = fs.read(dark_colorscheme_path)
scss_colorscheme_lines = scss_colorscheme.split('\n')

foreach l : scss_colorscheme_lines
    if (l.strip().startswith('$'))
        this_color_hex=l.strip('; \t').substring(-7)
        this_color_name=l.substring(1,-8).strip(': \t')
        dark_config.set(this_color_name, this_color_hex)
    endif
endforeach

# Now build all the individual components
subdir('gtk-2.0')
subdir('gtk-3.0')
subdir('gtk-4.0')

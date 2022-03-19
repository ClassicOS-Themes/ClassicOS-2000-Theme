project('ClassicOS-2000')

sassc = find_program('sassc', required: true)
if get_option('generate_sourcemaps')
    sassc_opts = [ '-a', '-t', 'compact' ]
else
    sassc_opts = [ '-a', '-M', '-t', 'compact' ]
endif

#glib_compile_resources = find_program('glib-compile-resources', required: true)

#gnome = import('gnome')

theme_deps = []

subdir('src')
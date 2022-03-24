configure_file(input : 'gtkrc.in',
               output : 'gtkrc-light',
               configuration : light_config)
configure_file(input : 'gtkrc.in',
               output : 'gtkrc-dark',
               configuration : dark_config)
gtk2_dark_path = theme_path_dark
if (theme_path == theme_path_dark)
    gtk2_dark_path=theme_path_dark+'-dark'
endif
install_data(
    join_paths(meson.current_build_dir(),'gtkrc-light'), 
    rename: 'gtkrc',
    install_dir : join_paths( theme_path , 'gtk-2.0' )
)
install_data(
    join_paths(meson.current_build_dir(),'gtkrc-dark'), 
    rename: 'gtkrc',
    install_dir : join_paths( gtk2_dark_path , 'gtk-2.0' )
)
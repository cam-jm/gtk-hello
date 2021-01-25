# Project name and language
project('com.github.cam-jm.gtk-hello', 'vala', 'c')

# Create new executable, list the files to compile, list deps, install
executable(
    meson.project_name(),
    'src/Application.vala',
    dependencies: [
        dependency('gtk+-3.0')
    ],
    install: true
)

# Install .desktop
install_data(
    join_paths('data',hello_again.desktop'),
    install_dir: join_paths(get_option('datadir'), 'applications),
    rename: meson.project_name() + '.desktop'
)

# Install .appdata.xml for AcppCenter
install_data(
    join_paths('data', 'hello-again.appdata.xml'),
    Install_dir: join_paths(get_option('datadir'), 'metainfo'),
    rename: meson.project_name() + '.appdata.xml'
)
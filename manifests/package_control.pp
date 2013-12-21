# Install Sublime Text 3 Package Control
# See: http://wbond.net/sublime_packages/package_control
#
# Usage:
#
#     include sublime_text_3::package_control

class sublime_text_3::package_control {
  require sublime_text_3::config

  $src  = "https://sublime.wbond.net/Package%20Control.sublime-package"
  $dest = "${sublime_text_3::config::package_control_dir}"

  exec{'wget package control':
    command => "/opt/boxen/homebrew/bin/wget -q $src -O $dest",
    creates => $dest
  }

  file{'$dest':
    mode => 0755,
    require => Exec['wget package control']
  }
}

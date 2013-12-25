# Install Sublime Text 3 Package Control
# See: http://wbond.net/sublime_packages/package_control
#
# Usage:
#
#     include sublime_text::package_control

class sublime_text::package_control {
  require sublime_text::config

  $src  = "https://sublime.wbond.net/Package%20Control.sublime-package"
  $dest = "${sublime_text::config::package_control_dir}"

  exec{'wget package control':
    command => "/opt/boxen/homebrew/bin/wget -q $src -O '$dest'",
    creates => $dest
  }

  file{$dest:
    mode => 0755,
    require => Exec['wget package control']
  }
}

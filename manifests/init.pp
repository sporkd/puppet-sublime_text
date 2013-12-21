# Install Sublime Text into /Applications
#
# Usage:
#
#     include sublime_text_3
class sublime_text_3 {
  include boxen::config
  require sublime_text_3::config

  package { 'Sublime Text 3':
    provider => 'appdmg',
    source   => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203047.dmg';
  }

  file { [
    $sublime_text_3::config::dir,
    $sublime_text_3::config::packages_dir,
    $sublime_text_3::config::user_packages_dir,
    $sublime_text_3::config::installed_packages_dir,
    $sublime_text_3::config::package_control_dir
  ]:
    ensure => directory
  }

  file { "${boxen::config::bindir}/subl":
    ensure  => link,
    target  => '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
    mode    => '0755',
    require => Package['Sublime Text 3'],
  }
}

# Install Sublime Text into /Applications
#
# Usage:
#
#     include sublime_text
class sublime_text {
  require sublime_text::config

  package { 'Sublime Text':
    provider => 'appdmg',
    source   => 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203059.dmg'
  }

  file { [
    $sublime_text::config::dir,
    $sublime_text::config::packages_dir,
    $sublime_text::config::user_packages_dir,
    $sublime_text::config::installed_packages_dir
  ]:
    ensure => directory
  }

  file { "${boxen::config::bindir}/subl":
    ensure  => link,
    target  => '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
    mode    => '0755',
    require => Package['Sublime Text']
  }
}

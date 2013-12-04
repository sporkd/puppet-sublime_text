# Public: Install a Sublime Text package.
#
# namevar - The name of the package.
# source  - The location of the git repository containing the package.
#
# Examples
#
#   sublime_text::package { 'Emmet':
#     source => 'sergeche/emmet-sublime'
#   }
define sublime_text_3::package($source, $branch = '') {
  require sublime_text_3::config

  unless $branch == '' {
    $extra = "-b ${branch}"
  }

  repository { "${sublime_text_3::config::packages_dir}/${name}":
    source => $source,
    extra  => $extra
  }
}

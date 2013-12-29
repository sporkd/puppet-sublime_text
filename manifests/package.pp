# Public: Install a Sublime Text package.
#
# namevar - The name of the package.
# source  - The location of the git repository containing the package.
# branch  - Name of the branch in git repository to checkout
#
# Examples
#
#   sublime_text::package { 'Emmet':
#     source => 'sergeche/emmet-sublime'
#   }
define sublime_text::package($source, $branch = '') {
  require sublime_text::config

  unless $branch == '' {
    $extra = "-b ${branch}"
  }

  repository { "${sublime_text::config::packages_dir}/${name}":
    source => $source,
    extra  => $extra
  }
}

# Internal: Prepare your system for Sublime Text 3 packages.
#
# Examples
#
#   include sublime_text_3::config
class sublime_text_3::config {
  $dir        = "/Users/${::boxen_user}/Library/Application Support/Sublime Text 3"
  $packages_dir = "${dir}/Packages"
  $user_packages_dir = "${packages_dir}/User"
  $installed_packages_dir = "${dir}/Installed Packages"

  anchor { [
    $dir,
    $packages_dir,
    $user_packages_dir,
    $installed_packages_dir
  ]: }
}

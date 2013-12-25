# Sublime Text Puppet Module for Boxen

[![Build Status](https://travis-ci.org/boxen/puppet-sublime_text.png?branch=master)](https://travis-ci.org/boxen/puppet-sublime_text)

Install [Sublime Text](http://www.sublimetext.com), a text-editor/IDE for Mac

Current Version: 3 Beta (Build 3059)
## Usage

```puppet
include sublime_text
sublime_text::package { 'Emmet':
  source => 'sergeche/emmet-sublime'
}
```

### Packages Management

You can manage Sublime Text 3 packages by the `sublime_text::package` class. Packages can be defined by using GitHub repository name or URL to .sublime-package file.

#### GitHub repository name

Package will be cloned from GitHub and installed into `Packages` directory.

```puppet
# install package named "Theme - Soda" from GitHub repository
# will be stored in "Packages/Theme - Soda"
sublime_text::package { 'Theme - Soda':
  source => 'buymeasoda/soda-theme/'
}
```


## Required Puppet Modules

* [boxen] >= 2.1.0
* [repository] >= 2.2.0
* [stdlib] >= 4.1.0


[boxen]: https://github.com/boxen/puppet-boxen
[repository]: https://github.com/boxen/puppet-repository
[stdlib]: https://github.com/puppetlabs/puppetlabs-stdlib

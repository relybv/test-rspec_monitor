# == Class rspec_monitor::install
#
# This class is called from rspec_monitor for install.
#
class rspec_monitor::install {

  package { $::rspec_monitor::package_name:
    ensure => present,
  }
}

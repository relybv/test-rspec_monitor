# == Class rspec_monitor::params
#
# This class is meant to be called from rspec_monitor.
# It sets variables according to platform.
#
class rspec_monitor::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'rspec_monitor'
      $service_name = 'rspec_monitor'
    }
    'RedHat', 'Amazon': {
      $package_name = 'rspec_monitor'
      $service_name = 'rspec_monitor'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}

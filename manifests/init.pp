# == Class: rspec_monitor
#
# Full description of class rspec_monitor here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class rspec_monitor {
  file { ['/usr/local/rspec_tests', '/usr/local/rspec_tests/spec']:
    ensure => directory,
  }
  package { ['serverspec', 'rspec-nagios-formatter', 'rspec-legacy_formatters']:
    ensure   => installed,
    provider => 'puppet_gem',
  }
}

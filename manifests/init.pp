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
  file { '/usr/local/rspec_tests':
    ensure => directory,
  }

  define rspec_monitor::add_tests {
    file { "/usr/local/rspec_tests/${name}":
      ensure => directory,
    }
    
  }
}

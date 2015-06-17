define rspec_monitor::add_tests {
  file { "/usr/local/rspec_tests/${name}":
    ensure => directory,
  }
}


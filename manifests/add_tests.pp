define rspec_monitor::add_tests {
  
  file { "/usr/local/rspec_tests/spec/${name}":
    ensure => directory,
    recurse => remote,
    recurselimit => 1,
    source => "puppet:///modules/${name}/spec/acceptance",
  }
}


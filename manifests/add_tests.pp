define rspec_monitor::add_tests {
  file { "/usr/local/rspec_tests/spec/${name}":
    ensure       => directory,
    recurse      => remote,
    recurselimit => 1,
    links        => manage,
    source       => [ "puppet:///modules/${name}/spec/acceptance", "/etc/puppet/modules/${name}/spec/acceptance" ],
  }
}

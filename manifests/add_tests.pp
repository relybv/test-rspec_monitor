define rspec_monitor::add_tests {
  file { "/usr/local/rspec_tests/spec/${name}":
    ensure       => directory,
  }
  file { "/usr/local/rspec_tests/spec/${name}/class_spec.rb":
    source  => "puppet:///modules/${name}/spec/acceptance/class_spec.rb",
    replace => true,
  }
}

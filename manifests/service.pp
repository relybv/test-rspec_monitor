# == Class rspec_monitor::service
#
# This class is meant to be called from rspec_monitor.
# It ensure the service is running.
#
class rspec_monitor::service {

  service { $::rspec_monitor::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}

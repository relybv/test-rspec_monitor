# == Class: rspec_monitor
#
# Full description of class rspec_monitor here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class rspec_monitor
(
  $package_name = $::rspec_monitor::params::package_name,
  $service_name = $::rspec_monitor::params::service_name,
) inherits ::rspec_monitor::params {

  # validate parameters here

  class { '::rspec_monitor::install': } ->
  class { '::rspec_monitor::config': } ~>
  class { '::rspec_monitor::service': } ->
  Class['::rspec_monitor']
}

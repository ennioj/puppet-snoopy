# == Class: snoopy
#
# Puppet snoopy module.
# Based on rentabiliweb-sample module.
#
class snoopy ($package = true, $service = true, $enable = true,) {
  # Include supervisor::params
  include snoopy::params

  $snoopy_package_name = $snoopy::params::snoopy_package_name
  $snoopy_lib_path     = $snoopy::params::snoopy_lib_path

  case $package {
    true    : { $ensure_package = 'present' }
    false   : { $ensure_package = 'purged' }
    latest  : { $ensure_package = 'latest' }
    default : { fail('package must be true, false or lastest') }
  }

  case $service {
    true    : { $ensure_service = 'present' }
    false   : { $ensure_service = 'absent' }
    default : { fail('service must be true or false') }
  }

  package { $snoopy_package_name: ensure => present, }

  if $service == true {
    file_line { 'snoopy':
      ensure => $ensure_service,
      path   => '/etc/ld.so.preload',
      line   => $snoopy_lib_path,
    }
  }
}
# EOF

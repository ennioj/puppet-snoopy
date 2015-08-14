# == Class: snoopy::params
#
class snoopy::params {
  case $::operatingsystem {
    /(Debian|Ubuntu)/        : {
      $snoopy_package_name = 'snoopy'
      $snoopy_lib_path     = '/lib/snoopy.so'
    }
    /(CentOS|Fedora|RedHat)/ : {
      $snoopy_package_name = 'snoopy'
      $snoopy_lib_path     = '/lib64/snoopy.so'
    }
    default                  : {
      fail("Module snoopy is not supported on ${::operatingsystem}")
    }
  }
}
# EOF

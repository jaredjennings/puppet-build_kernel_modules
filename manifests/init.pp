# == Class: build_kernel_modules
#
# Make sure kernel modules can be built. This is probably only a thing
# under Linux, and only when you are using some software that isn't
# closely integrated into your Linux distribution, like a proprietary
# graphics driver or a piece of virtualization software.
#
# === Examples
#
#  class { 'build_kernel_modules':
#  }
#
# === Authors
#
# Jared Jennings <jjennings@fastmail.fm>
#
# === Copyright
#
# Copyright 2015 Jared Jennings.
#
class build_kernel_modules {
  require make
  require gcc
  
  $kernel_module_build_packages = $::osfamily ? {
    'RedHat' => ['kernel-devel'],
    default  => fail("kernel_module_build_packages not defined for osfamily $::osfamily"),
  }
  package { $kernel_module_build_packages:
    ensure => installed,
  }
}

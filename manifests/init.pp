# == Class: starfish
#
# Full description of class starfish here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'starfish':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class starfish (
  $repo_url        = $::starfish::params::repo_url,
  $repo_name       = $::starfish::params::repo_name,
  $proxy           = $::starfish::params::proxy,
  $descr           = $::starfish::params::repo_descr,
  $gpgcheck        = $::starfish::params::repo_gpgcheck,
  $enabled         = $::starfish::params::repo_enabled,
  $super_repo_name = $::starfish::params::super_repo_name,
  $super_descr     = $::starfish::params::super_descr,
  $super_repo_url  = $::starfish::params::super_repo_url
) inherits starfish::params {

  class { 'starfish::repo': } ->
  class { 'starfish::install': } ->
  class { 'starfish::config': } ~>
  class { 'starfish::service': }

  contain 'starfish::repo'
  contain 'starfish::install'
  contain 'starfish::config'
  contain 'starfish::service'

  #Class['starfish']

}

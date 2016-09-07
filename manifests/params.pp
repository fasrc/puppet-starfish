# Class: starfish::params
#
# parameters used by the module
#
class starfish::params {
  $repo_url
  $super_repo_url
  $version         = undef
  $repo_name       = 'Starfish'
  $proxy           = undef
  $descr           = 'Starfish Repository'
  $gpgcheck        = 0
  $gpgkey          = undef
  $enabled         = 1
  $super_repo_name = 'starfish-supervisor'
  $super_descr     = 'supervisor 3 Repository'
}

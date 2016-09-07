# Class: starfish::params
#
# parameters used by the module
#
class starfish::params {
  $repo_url        = undef
  $super_repo_url  = undef
  $version         = undef
  $repo_name       = 'Starfish'
  $proxy           = undef
  $descr           = 'Starfish Repository'
  $gpgcheck        = 0
  $enabled         = 1
  $super_repo_name = 'starfish-supervisor'
  $super_descr     = 'supervisor 3 Repository'
}

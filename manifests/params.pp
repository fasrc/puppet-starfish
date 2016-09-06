# Class: starfish::params
#
# parameters used by the module
#
class starfish::params {
  $version         = undef,
  $repo_url        = undef,
  $repo_name       = 'Starfish',
  $proxy           = undef,
  $descr           = 'Starfish Repository',
  $gpgcheck        = 0,
  $gpgkey          = false,
  $enabled         = 1,
  $super_repo_name = 'starfish-supervisor',
  $super_descr     = 'supervisor 3 Repository',
  $super_repo_url  = undef
}

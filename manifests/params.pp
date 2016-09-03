# Class: starfish::params
#
# parameters used by the module
#
class starfish::params (
    $version         = undef,
    $repo_url        = undef,
    $repo_name       = 'Starfish',
    $proxy           = undef,
    $descr           = 'Starfish Repository',
    $gpgcheck        = false,
    $gpgkey          = 0,
    $enabled         = 1,
    $super_repo_name = 'starfish-supervisor'
    $super_descr     = 'supervisor 3 Repository'
    $super_url       = undef
  ) {
}

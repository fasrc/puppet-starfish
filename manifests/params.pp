# Class: starfish::params
#
# parameters used by the module
#
class starfish::params (
    $version   = undef,
    $repo_url  = undef,
    $repo_name = 'starfish',
    $proxy     = undef,
    $descr     = 'Starfish yum repository',
    $gpgcheck  = false,
    $gpgkey    = undef,
    $enabled   = true
  ) {
}

# Class: starfish::repo
# ensures the yum repo is defined
#
class starfish::repo (

  $version         = $::starfish::params::version,
  $repo_url        = $::starfish::params::repo_url,
  $repo_name       = $::starfish::params::repo_name,
  $proxy           = $::starfish::params::proxy,
  $descr           = $::starfish::params::repo_descr,
  $gpgcheck        = $::starfish::params::repo_gpgcheck,
  $gpgkey          = $::starfish::params::repo_gpgkey,
  $enabled         = $::starfish::params::repo_enabled,
  $super_repo_name = $::starfish::params::super_repo_name,
  $super_descr     = $::starfish::params::super_descr,
  $super_repo_url  = $::starfish::params::super_repo_url
  
) inherits starfish::params {
  
  validate_string($repo_url)
  ensure_resource('yumrepo', $repo_name, {
    'ensure'   => 'present',
    'descr'    => $descr,
    'baseurl'  => $repo_url,
    'gpgcheck' => $gpgcheck,
    'gpgkey'   => $gpgkey,
    'enabled'  => $enabled,
    'proxy'    => $proxy,
    })
  validate_string($super_repo_url)
  ensure_resource('yumrepo', $super_repo_name, {
    'ensure'   => 'present',
    'descr'    => $super_descr,
    'baseurl'  => $super_repo_url,
    'gpgcheck' => $gpgcheck,
    'gpgkey'   => $gpgkey,
    'enabled'  => $enabled,
    'proxy'    => $proxy,
    })
}

# Class: starfish::repo
# ensures the yum repo is defined
#
class starfish::repo inherits starfish::params (
  $url       = $starfish::params::repo_url,
  $repo_name = $starfish::params::repo_name,
  $proxy     = $starfish::params::proxy,
  $descr     = $starfish::params::repo_descr,
  $gpgcheck  = $starfish::params::repo_gpgcheck,
  $gpgkey    = $starfish::params::repo_gpgkey,
  $enabled   = $starfish::params::repo_enabled
){
  validate_string($url)
  ensure_resource('yumrepo', $repo_name, {
    'ensure'   => 'present',
    'descr'    => $descr,
    'baseurl'  => $url,
    'gpgcheck' => $gpgcheck,
    'gpgkey'   => $gpgkey,
    'enabled'  => $enabled,
    'proxy'    => $proxy,
    })
}

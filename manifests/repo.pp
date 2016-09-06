# Class: starfish::repo
# ensures the yum repo is defined
#
class starfish::repo inherits starfish::params {
  
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

class starfish::service {
  service { 'supervisord':
    ensure => 'running',
  }
}
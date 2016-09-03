class service{
  service { 'supervisord':
    ensure => 'running',
  }
}
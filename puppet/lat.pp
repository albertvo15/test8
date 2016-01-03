

file { '/data/LAT/':
  ensure => directory,
  owner => 'nobody',
  group => 'sys',
  mode => '0460',
}


file { '/data/LAT/version':
  ensure => present,
  path => '/data/LAT/version',
  content => 'VERSION=239648',
  owner => 'nobody',
  group => 'sys',
  mode => '0460',
}

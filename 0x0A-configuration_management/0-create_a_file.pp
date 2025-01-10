file { '/tmp/school':
  ensure  => 'file',
  content => 'I love Puppet',
  mode    => '0644',
  owner   => 'www-data',
  group   => 'www-data',
}



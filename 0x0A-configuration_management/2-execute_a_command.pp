exec { 'kill_killmenow_process':
  command => '/usr/bin/pkill killmenow',
  path    => ['/usr/bin', '/bin'],
  onlyif  => '/usr/bin/pgrep killmenow', # Ensures the command runs only if the process exists
}



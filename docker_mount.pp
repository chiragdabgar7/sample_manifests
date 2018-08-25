docker::run { 'mount_test':
  image		=> 'pbg-nginx1',
  volumes	=> ['/tmp/test:/mnt/data'],
  command	=> '/bin/sh -c "echo Hello There >/mnt/data/hello.txt"',
}

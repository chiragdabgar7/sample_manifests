range(1,20).each | $instance | {
  docker::run { "hello-${instance}":
    image	=> 'bitfield/hello',
    ensure	=> stopped,
    command	=> '/bin/sh -c "while true; do echo Hello, World; sleep 1; done"'
}
}

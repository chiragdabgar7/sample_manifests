
type Servicestate = Enum['running', 'stopped']

define myservice (Servicestate $state) {
  service { $name:
    ensure	=> $state,
  }
}

myservice { 'ntp':
  state		=> stopped,
}

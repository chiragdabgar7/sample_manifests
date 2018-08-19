$nics = $facts['networking']['interfaces']
$nics.each | String $interfaces, Hash $attributes | {
notice ("Interfaces ${interfaces} has IP ${attributes['ip']} and IPv6 ${attributes['ip6']}")
}

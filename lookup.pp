#lookup examples

class lkp {
  lookup('monitor_ips').each | String $ip | {
     notice ("These are all the ip's listed --- ${ip}")
}
}
include lkp

$user_list = ['tom', 'dick', 'harry']
$user_list.each | $user | {
user { "${user}":
  ensure	=> absent,
  home		=> "/home/${user}",
  }
}

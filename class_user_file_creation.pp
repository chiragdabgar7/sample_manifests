#create a user, group, file with the user as the owner

class user_create (
  $user_name = 'test_user',
  $content = 'This is a test content',
  $permissions = '0644',
  $file_name = "TEST_FILE",
){
notice ("This is the test user ${user_name}")
#  group { "${name}":
#   ensure	=> present,
#   gid		=> 3000,
#  }
  user { $user_name:
   ensure	=> present,
#   mode		=> $permissions,
#   content	=> $content,
}
  file { $file_name:
    path	=> "/examples/$file_name",
    ensure	=> file,
    mode	=> $permissions,
    content	=> $content,
}
}
include user_create

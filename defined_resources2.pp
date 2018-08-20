type perms = Enum['0644','0640']

define my_file(perms $perm){
  file { $name :
    code 	=> $perm,
     }
}

myfile { 'file_no1':
  ensure		=> present
}

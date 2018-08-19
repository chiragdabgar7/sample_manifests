class simple_params1 (
  String $pet = 'Dog',
  $test = 'this is bullshit',
){
  notice ("This class will show your fav pet ${pet}")
  notice ("This is a ${test}")
}


include simple_params1

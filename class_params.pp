class simple_parama {
  $tasks = ['task1', 'task2', 'task3']
  $tasks.each | $task | {
  file { "/examples/${task}":
    ensure 	=> absent,
    content	=> "This is a ${task} file",
    mode 	=> '0644',
    }
}
}

include simple_parama

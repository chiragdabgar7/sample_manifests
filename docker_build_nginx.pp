file { '/tmp/Dockerfile.nginx':
  source	=> '/my_examples/sample_manifests/Dockerfile.nginx',
  notify	=> Docker::Image['pbg-nginx'],
}

docker::image { 'pbg-nginx':
  docker_file	=> '/tmp/Dockerfile.nginx',
  ensure	=> latest,
}

docker::run { 'pbg-nginx-100':
  image		=> 'pbg-nginx',
  command	=> '/bin/sh -c "while true; do echo hi!; sleep 1; done"',
}

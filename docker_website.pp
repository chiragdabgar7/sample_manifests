file { '/tmp/Dockerfile.nginx':
  content	=> epp('/my_examples/sample_manifests/Docker.websit.epp',
  {
    'git_url' => 'https://github.com/bitfield/pbg-website.git'
  }
  ),
notify 		=> Docker::Image['pbg-nginx1']
}

docker::image { 'pbg-nginx1':
  ensure	=> latest,
  docker_file	=> '/my_examples/sample_manifests/Dockerfile.nginx',
  notify 	=> Docker::Run['pbh-nginx101'],
}

docker::run { 'pbh-nginx101':
  image		=> 'pbg-nginx1',
  ports		=> ['1000:80'],
  pull_on_start	=> true,
}

#docker::image { 'pbg-hello':
#  docker_file		=> "/my_examples/sample_manifests/Dockerfile.hello",
#  ensure		=> latest,
#}

docker::image { 'pbg-hello':
  image			=> 'alpine',
  ensure		=> latest,
}

docker::run { 'pbg-hello1':
  image			=> 'alpine',
}

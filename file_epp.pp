file { '/my_examples/BACKUP':
  content 	=> epp('pbg/copy.epp',
  {
    'data_file'	=> 'sample_manifests/README.md',
  }
),
mode		=> '0755',
}

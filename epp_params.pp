file { '/my_examples/AWS_CREDS':
  content       => epp('/my_examples/sample_manifests/temp_params.epp',
  {
        'aws_access_key'        => 'AWS_ACCESS_KEY_1',
        'aws_secret_key'        => 'AWS_SECRET_KEY_2',
  }
),
}

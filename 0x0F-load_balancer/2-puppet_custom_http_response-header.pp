# customizing HTTP header with Puppet.
exec { 'update':
  command  => 'apt-get update',
}

-> package { 'nginx':
  ensure  => present,
}

-> file_line { 'header_customization':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => ':80 default_server;',
  line   => "add_header X-Served-By ${hostname};",
}

-> exec { 'nginx_run':
  command => 'service nginx start',
}

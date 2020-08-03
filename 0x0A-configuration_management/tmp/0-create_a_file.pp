# create a file containing 'I love Puppet'.
file { '/tmp/holberton':
ensure  => 'present',
content => 'I love Puppet',
mode    => '0744',
group   => 'www-data',
owner   => 'www-data'
}
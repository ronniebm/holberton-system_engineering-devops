# puppet file that edits the local host ssh client
file_line { 'set OFF passw auth':
    ensure => 'present',
    path   => '/etc/ssh/ssh_config',
    line   => 'PasswordAuthentication no'
}

file_line { 'Declaring identity file':
    ensure => 'present',
    path   => '/etc/ssh/ssh_config',
    line   => 'IdentityFile ~/.ssh/holberton'
}
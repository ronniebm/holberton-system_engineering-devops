# puppet manifest, it fixes a wordpress installation.
exec { 'fix WordPress':
  command => '/bin/sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
}
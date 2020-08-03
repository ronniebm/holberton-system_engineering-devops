# create a file containing 'I love Puppet'.
package { 'puppet-lint':
  ensure   => '2.1.1',
  provider => 'gem',
}
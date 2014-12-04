exec { '/usr/bin/apt-get update': } ->

package { ['ruby', 'rubygems', 'git-core', 'ruby-dev']:
  ensure => installed,
}

file { '/etc/gemrc':
  ensure  => file,
  content => 'gem: --no-rdoc --no-ri',
}

package { 'bundler':
  ensure   => installed,
  provider => 'gem',
  require  => Package['rubygems'],
}

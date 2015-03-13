node default {
  class { 'php': }
  class { 'apache':
    mpm_module => 'prefork',
    user => 'vagrant',
    group => 'vagrant',
  }
  include apache::mod::php
  include apache::mod::rewrite

  php::module {  "curl": }
  php::module {  "mysql": }
  php::module {  "xdebug": }

  apache::vhost { 'www.wprova.lo':
    port    => 80,
    docroot => '/vagrant/app',
  }

  class { '::mysql::server':
    root_password => 'o4o4'
  }

  mysql::db { 'wordpress':
    user     => 'wp_user',
    password => 'wpo4o4',
  }

  file { 'xdebug':
    path    => '/etc/php5/apache2/conf.d/20-xdebug.ini',
    ensure  => '/vagrant/resources/xdebug.ini',
    require => Class['php'],
    notify  => Service['apache2'],
  }

}

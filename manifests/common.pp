class sensuchecks::common {
  File {
    owner => 'root',
    group => 'root',
    mode  => '0755'
  }
  file { '/etc/sensu/plugins/check-procs.rb':
    source => 'puppet:///modules/sensuchecks/sensu-community-plugins/plugins/processes/check-procs.rb',
  }
  file { '/etc/sensu/plugins/check-http.rb':
    source => 'puppet:///modules/sensuchecks/sensu-community-plugins/plugins/http/check-http.rb',
  }
  file { '/etc/sensu/plugins/check-disk.rb':
    source => 'puppet:///modules/sensuchecks/sensu-community-plugins/plugins/system/check-disk.rb',
  }
}

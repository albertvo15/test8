user { 'tuserbkc':
  ensure => present,
  shell => '/bin/dash',
}

file { '/home/tuserbkc':
   ensure => directory,
   mode => '0700',
   owner => 'tuserbkc',
   require => User["tuserbkc"]
 }
 file { '/home/tuserbkc/.ssh':
   ensure => directory,
   mode => '0700',
   owner => 'tuserbkc',
   require => File["/home/tuserbkc"]
 }

 file { '/home/tuserbkc/.ssh/authorized_keys':
   ensure => present,
   path => '/home/tuserbkc/.ssh/authorized_keys',
   mode => '0700',
   owner => 'tuserbkc',
   require => File["/home/tuserbkc/.ssh"]
 }



 ssh_authorized_key { '/home/tuserbkc/.ssh/authorized_keys':
   user => 'tuserbkc',
   ensure => present,
   type => 'ssh-dss',
   key => 'AAAAB3NzaC1kc3MAAACBAPgOJm7LqL9rPN3n86+cLcTxzk3BN38CDGgdmJoMKUMGl3dkVFl1ugHFlCqg7cqTSOfypvSO8RSBnDEgWKjlA3q0XQPPMqOc9HN34w16ptnwV2SwLANZZQZoDfjteHqyK3c0XFLDWFHmhIvXhPYjxnr31Lirfrp4sOg6b+NnLMz7AAAAFQDdqT7OtAlxI4eHu8Dp+m4iZh8VqQAAAIEAlkgiDj7ApRqx6e+ZY718iC+jtjee5NUw0ixiorpuTDdtZ3CbJGeC5WoKV/1EyBqdlwbALslXP38+keP1wpmLQXGp2mxi5ksecsKLPGihXrWJiRtWFKMDpka6/J5+xfwoiT36VYeLgDNYDy2oDO70is5B5959SusneeUu3FMv5xMAAACBAMaD0PnHdgBnIoh3Log0bKM8pXA8BYjpmRrdFjhV468LlWGyAc8sEQfSzqQNY07Brg4yZccx/hbo7X10NK34RwpnqY0brOBBkIeUsQgZEgI1tE+awvnTHPb56m6y05UqSmvk3U6aJr52+NWlluL9h3b1wMEokJBiOuz2zS4L3X56',
   name => 'tuser@trulytech.net',
   require => File["/home/tuserbkc/.ssh/authorized_keys"]
 }



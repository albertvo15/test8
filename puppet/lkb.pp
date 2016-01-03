
file { "/data/project/LKB":
	path => "/data/project/LKB",
	ensure => directory,
	owner => "root",
	mode => "0644"
}

file { "/data/project/LKB/version":
	path => "/data/project/LKB/version",
	ensure => present,
	content => "VERSION=239644",
	owner => "root",
	mode => "0644"
}

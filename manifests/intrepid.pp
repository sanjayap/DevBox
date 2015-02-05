node 'web.intrepidtravel.com.uat.local'{
	include repos
	include ntp
	include nginx
}

node 'db.intrepidtravel.com.uat.local'{	
	include ntp
	include mysql	

    	file { "mysql_conf" :
        	name   => '/etc/my.cnf',
        	ensure => present,
        	owner  => root,
        	group  => root,
       		mode   => "0644",
        	source => '/vagrant/files/my.cnf',
    	}
}

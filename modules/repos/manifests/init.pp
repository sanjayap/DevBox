class repos{
     include epel
     package {"webtatic-release":
     ensure => installed,
     source => "http://mirror.webtatic.com/yum/el6/latest.rpm",
     provider => rpm,
     } 
}

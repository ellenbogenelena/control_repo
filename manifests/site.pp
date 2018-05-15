node default {
 } 
 
 node 'ip-172-31-17-234.eu-central-1.compute.internal' {
   include role::master_server
   file { '/root/README':
      ensure => file,
      content => $fqdn,
   }
 }
 
 node 'ip-172-31-31-200.eu-central-1.compute.internal' {
    include role::app_server
    include role::db_server
 }   
    
 
      
